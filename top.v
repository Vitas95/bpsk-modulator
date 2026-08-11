//////////////////////////////////////////////////////////////////////////////////
// Description: 
//////////////////////////////////////////////////////////////////////////////////
module top(
	input clk_50MHz_i,
	input button_reset,
	
	// DAC conections
	output reg [7:0] dac_data,
	output	    	 dac_clock,
	
	// Test input buttons
   	input 	button_key1,
	input	button_key2,
	input	button_key3,
	input	button_key4,
	
	// Indication leds
	output reg [3:0] status_led,

	// 7-seg display
	output [5:0]	dig,
	output [7:0] 	segment
);

// Registers
reg [15:0] 	phase_accum, delta_phi;
reg		  	pll_locked_q;

// Connections
wire 		clk_80MHz;
wire 		pll_locked, reset, pll_reset, reset_b;
wire [1:0]  samples;
wire [1:0]  upsampled_data;
wire [7:0]  fir_data_in;
wire [15:0] pulse_shaped_data;
wire [7:0]  filtered_data;
wire [31:0] cic_data_out;
wire [15:0] upsampled_filtered;
wire [7:0]  nco_out;
wire [15:0] modulation;
wire [7:0]  modulator_out;
wire [1:0]  state;
wire 		button_1, button_2,
	  		button_3, button_4;
wire [19:0] bcd_number;
wire 		samples_valid, upsampled_valid;	

// States of the state machine
parameter [1:0] SHOW_UPSAMPLED = 2'b00,
				SHOW_SHAPED	 = 2'b01,
				SHOW_FILTERED  = 2'b10,
				SHOW_MODULATOR = 2'b11;

// PLL and clock managment
pll pll_main (
	// Clock in ports
	.clk_50MHz_i(clk_50MHz_i),
	// Clock out ports    
	.clk_80MHz(clk_80MHz),
	.LOCKED(pll_locked)
);

always @(posedge clk_80MHz) begin
	pll_locked_q <= pll_locked;
end

assign pll_reset = pll_locked & ~pll_locked_q;

// Control buttons processing
button b_state_up(
	.clock (clk_80MHz),
	.button_n (button_key1),
	.out (button_1)
);

button b_state_down(
	.clock (clk_80MHz),
	.button_n (button_key2),
	.out (button_2)
);

button b_freq_up(
	.clock (clk_80MHz),
	.button_n (button_key3),
	.out (button_3)
);

button b_freq_down(
	.clock (clk_80MHz),
	.button_n (button_key4),
	.out (button_4)
);

// Reset button and all reset processing
button b_reset(
	.clock (clk_80MHz),
	.button_n (button_reset),
	.out (reset_b)
);

assign reset = reset_b | pll_reset;

// State machine
state_machine sm1(
	.clock(clk_80MHz),
	.reset(reset),
	
	// Input signals for the state machine
   .button_1(button_1),
   .button_2(button_2),
   
	// Output is a current state of the machine
	.state(state)
);

// Data samples generation
data_generator #(
	.CLK_PER_VALID(80)
) samples_gen ( 
	.clock(clk_80MHz),
    .reset(reset),
    .m_axis_tdata(samples),
	.m_axis_tvalid(samples_valid)
);

// Upsampling data
upsampler #(
    .CLK_FREQ        (80_000_000),
    .IN_SAMPLE_RATE  (1_000_000),
    .OUT_SAMPLE_RATE (4_000_000),
    .DATA_WIDTH      (2),
    .HOLD            (0)
) u_upsampler (
    .clock          (clk_80MHz),
    .reset          (reset),
    .s_axis_tdata	(samples),
    .s_axis_tvalid	(samples_valid),
    .m_axis_tdata	(upsampled_data),
    .m_axis_tvalid	(upsampled_valid)
);

// FIR filter
////////////////////////////////////////////////
assign fir_data_in = {{8{upsampled_data[1]}},upsampled_data};
mac_fir #(
    .DATA_WIDTH(8),
    .COEFF_WIDTH(16),
	.NUM_COEFF(13)
) pulse_shaping (
    .clk(clk_80MHz),
    .rst(reset),
    .data_in(fir_data_in),
    .valid_in(upsampled_valid),
    .data_out(pulse_shaped_data),
    .valid_out(pulse_shaped_valid)
);

// Проблема тут, фильтр работает отлично
assign filtered_data = pulse_shaped_data[8:1];

////////////////////////////////////////////////

// Upsampling to DAC sample rate and anti imaging filtration
cic_filter #(
    .DATA_WIDTH(8),
    .UPSAMPLING(20),
    .STAGES(4),
    .DIFF_DELAY(1)
) up_cic (
    .clk(clk_80MHz),
    .rst(reset),

    .data_in(filtered_data),
    .valid_in(pulse_shaped_valid),
    .data_out(cic_data_out)
    // .valid_out()
);
assign upsampled_filtered = cic_data_out[20:5];

// NCO 
////////////////////////////////////////////////
// Variable frequency with button 3 and 4.
// Frequency calculation example:
// delta_phi = int(F_out / F_clk * 2**16)
// delta_phi = int(10e6 / 80e6 * 65536) = 8192
// So initial frequency is 10 MHz.
// Maximum frequency - 30 MHz, minimum - 0.15625 MHz.
always @(posedge clk_80MHz) begin
	if (reset) delta_phi <= 16'd8192;
	else if ((delta_phi <= 16'd24576) && (button_3)) begin
		delta_phi <= delta_phi + 16'd128;
	end else if ((delta_phi > 16'd128) && (button_4)) begin
		delta_phi <= delta_phi - 16'd128;
	end else begin
		delta_phi <= delta_phi;
	end
end

always @(posedge clk_80MHz) begin
	if (reset) phase_accum <= 0;
	else phase_accum <= phase_accum + delta_phi;
end
////////////////////////////////////////////////

// Display delta phi on 7-seg display
////////////////////////////////////////////////
bin2bcd bin2bcd_inst(
    .bin(delta_phi),
    .bcd(bcd_number)
);

display_counters display_counters_inst(
	.clock_80Mhz_i(clk_80MHz),
	.reset(reset),
	.dig(dig)
);

display_decoder display_decoder_inst(
	.clock(clk_80MHz),
	.reset(reset),
	.bcd(bcd_number),
	.dig(dig),
	.segment(segment)
);
////////////////////////////////////////////////

// Modulation with CORDIC
////////////////////////////////////////////////
cordic_top #(
    .STAGES(14),
    .DATA_WIDTH(16),
    .PHASE_WIDTH(16),
	.PIPLINED(1)
) cordic_inst (
    .clk(clk_80MHz),
    .rst(reset),

    .X_in(upsampled_filtered),
    .Y_in(16'd0),
    .X_out(modulation),
    .phase_in(phase_accum),
    .phase_valid_in(1'b1)
);

assign modulator_out = modulation[15:8];
////////////////////////////////////////////////

// Chooose output samples for the DAC.
// Signed to unsigned conversion is performed.
assign dac_clock = clk_80MHz;

always @(*) begin
	case(state)
		SHOW_UPSAMPLED: dac_data = fir_data_in;	// Display data
		SHOW_SHAPED:    dac_data = filtered_data + 8'b1000_0000; // After pulse shaping
		SHOW_FILTERED:  dac_data = upsampled_filtered[15:8] + 8'b1000_0000;	// Data after anti-imaging filtration
		SHOW_MODULATOR: dac_data = modulator_out + 8'b1000_0000;	// Modulated signal
		default:		dac_data = samples;
	endcase
end

// Display current state with the led
always @(*) begin
	case(state)
		SHOW_UPSAMPLED: status_led = 4'b1000;
		SHOW_SHAPED:    status_led = 4'b0100;
		SHOW_FILTERED:  status_led = 4'b0010;
		SHOW_MODULATOR: status_led = 4'b0001;
		default:		status_led = 4'b1000;
	endcase
end

// Chipscope
wire [35:0] control0;
reg [7:0] TRIG0_probe;

always @(*) begin
	case(state)
		SHOW_UPSAMPLED: TRIG0_probe = fir_data_in;	// Display data
		SHOW_SHAPED:    TRIG0_probe = filtered_data; // After pulse shaping
		SHOW_FILTERED:  TRIG0_probe = upsampled_filtered[15:8];	// Data after anti-imaging filtration
		SHOW_MODULATOR: TRIG0_probe = modulator_out;	// Modulated signal
		default:		TRIG0_probe = samples;
	endcase
end

chipscope_icon icon_inst (
    .CONTROL0(control0)
);

chipscope_ila U0 (
    .CONTROL(control0),
    .CLK(clk_80MHz),
    .TRIG0(TRIG0_probe)
);


endmodule
