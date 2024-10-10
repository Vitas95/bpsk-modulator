`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:30:16 09/09/2024 
// Design Name: 
// Module Name:    main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module main(
	input clk_50MHz_i,
	input button_reset,
	
	// DAC conections
   output reg [7:0] dac_data,
	output	    	  dac_clock,
	
	// Test input buttons
   input button_key1,
	input	button_key2,
	input	button_key3,
	input	button_key4,
	
	// Indication leds
	output reg [3:0] status_led
);

// Registers
reg [15:0] phase_accum;
reg		  main_pll_locked_q;

// Connections
wire clk_1MHz, clk_4MHz, clk_5MHz, 
	  clk_50MHz, clk_80MHz;
wire main_pll_locked;
wire [7:0]  samples;
wire [7:0]  upsampled_data;
wire [16:0] pulse_shaped_data;
wire [7:0]  filtered_data;
wire [23:0] m_axis_data_tdata;
wire [7:0]  upsampled_filtered;
wire [7:0]  nco_out;
wire [15:0] modulation;
wire [7:0]  modulator_out;
wire [1:0]  state;
wire button_1, button_2,
	  button_3, button_4;

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
	.clk_50MHz(clk_50MHz),
	.clk_5MHz(clk_5MHz),
	.clk_4MHz(clk_4MHz),
	.LOCKED(main_pll_locked)
);

always @(posedge clk_5MHz) begin
	main_pll_locked_q <= main_pll_locked;
end

wire data_pll_reset = main_pll_locked & ~main_pll_locked_q;

data_rate_pll pll_data (
	// Clock in ports
	.clk_5MHz(clk_5MHz),
	.RESET(data_pll_reset),
   // Clock out ports
	.clk_1MHz(clk_1MHz)
);

assign dac_clock = clk_80MHz;

// Control buttons processing
button b_data(
	.clock (clk_50MHz),
	.button_n (button_key1),
	.out (button_1)
);

button b_fir(
	.clock (clk_50MHz),
	.button_n (button_key2),
	.out (button_2)
);

button b_nco(
	.clock (clk_50MHz),
	.button_n (button_key3),
	.out (button_3)
);

button b_modulator(
	.clock (clk_50MHz),
	.button_n (button_key4),
	.out (button_4)
);

// Reset button and all reset processing
button b_reset(
	.clock (clk_50MHz),
	.button_n (button_reset),
	.out (reset)
);

// State machine
state_machine sm1(
	.clock(clk_50MHz),
	.reset(reset),
	
	// Input signals for the state machine
   .button_1(button_1),
   .button_2(button_2),
   .button_3(button_3),
   .button_4(button_4),
   
	// Output is a current state of the machine
	.state(state)
);

// Data samples generation
data_generator samples_gen(
	 .clock(clk_1MHz),
    .reset(data_pll_reset),
    .samples(samples)
);

// Upsampling data
upsampler #( 
	.N(4),
	.HOLD(0)
) up_4 (
	.clock(clk_4MHz),
	.reset(reset),
	.data_in(samples),
	.upsampled_data(upsampled_data)
);

// FIR filter
////////////////////////////////////////////////

fir_filter pulse_shaping (
	.clk(clk_4MHz), // input clk
	.rfd(rfd), // output rfd
	.rdy(rdy), // output rdy
	.din(upsampled_data), // input [7 : 0] din
	.dout(pulse_shaped_data) // output [16 : 0] dout
); 

assign filtered_data = pulse_shaped_data[7:0];
////////////////////////////////////////////////

// Upsampling to DAC sample rate and anti imaging filtration
filter up_cic (
  .aclk(clk_80MHz), // input aclk
  .s_axis_data_tdata(filtered_data), // input [7 : 0] s_axis_data_tdata
  .s_axis_data_tvalid(clk_4MHz), // input s_axis_data_tvalid
  //.s_axis_data_tready(s_axis_data_tready), // output s_axis_data_tready
  .m_axis_data_tdata(m_axis_data_tdata) // output [23 : 0] m_axis_data_tdata
  //.m_axis_data_tvalid(m_axis_data_tvalid) // output m_axis_data_tvalid
);

assign upsampled_filtered = m_axis_data_tdata[20:13];

// NCO 
// With 16'd8192phase incremet and 80 MHz sample 
// rate output frequency of the NCO is 10 MHz. 
always @(posedge clk_80MHz) begin
	if (reset) phase_accum <= 0;
	else phase_accum <= phase_accum + 16'd8192;
end

nco nco_sine (
  .clk(clk_80MHz), // input clk
  .phase_in(phase_accum), // input [15 : 0] phase_in
  .sine(nco_out) // output [7 : 0] sine
);

// Modulation
////////////////////////////////////////////////
mixer modulator (
  .clk(clk_80MHz), // input clk
  .a(upsampled_filtered), // input [7 : 0] a
  .b(nco_out), // input [7 : 0] b
  .p(modulation) // output [15 : 0] p
);

assign modulator_out = modulation[14:7];
////////////////////////////////////////////////

// Chooose output samples for the DAC.
// Signed to unsigned conversion is performed.
always @(*) begin
	case(state)
		SHOW_UPSAMPLED: dac_data = samples;	// Display data
		SHOW_SHAPED:    dac_data = filtered_data + 8'b1000_0000; // After pulse shaping
		SHOW_FILTERED:  dac_data = upsampled_filtered + 8'b1000_0000;	// Data after anti-imaging filtration
		SHOW_MODULATOR: dac_data = modulator_out + 8'b1000_0000;	// Modulated signal
		default:			 dac_data = 8'b0000_0000;
	endcase
end

// Display current state with the led
always @(*) begin
	case(state)
		SHOW_UPSAMPLED: status_led = 4'b1000;
		SHOW_SHAPED:    status_led = 4'b0100;
		SHOW_FILTERED:  status_led = 4'b0010;
		SHOW_MODULATOR: status_led = 4'b0001;
		default:			 status_led = 4'b1000;
	endcase
end


endmodule
