`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: upsampler
// Description:
//   Increases the sample rate of an input data stream by a factor of N, where
//   N = OUT_SAMPLE_RATE / IN_SAMPLE_RATE. The output timing is derived from
//   CLK_FREQ and OUT_SAMPLE_RATE. Inserted samples are either held (HOLD=1)
//   or zero-padded (HOLD=0). Output is accompanied by a one-cycle valid strobe.
//////////////////////////////////////////////////////////////////////////////////
module upsampler #( 
	parameter DATA_WIDTH = 8,
	parameter CLK_FREQ        = 80_000_000,  
    parameter IN_SAMPLE_RATE  = 1_000_000,   // 1 Msps
    parameter OUT_SAMPLE_RATE = 4_000_000,   // 4 Msps
	parameter HOLD = 1
)(
	input  	clock,
	input  	reset,
	input  	   [DATA_WIDTH - 1:0] s_axis_tdata,
	input						  s_axis_tvalid,
	output reg [DATA_WIDTH - 1:0] m_axis_tdata,
	output reg 					  m_axis_tvalid
);

// Функция ceil(log2(x)), совместимая с Verilog-2001
function integer clog2;
    input integer value;
    integer i;
    begin
        clog2 = 0;
        for (i = value - 1; i > 0; i = i >> 1)
            clog2 = clog2 + 1;
    end
endfunction

// Parameter calculations
localparam N            = OUT_SAMPLE_RATE / IN_SAMPLE_RATE;
localparam OUT_PERIOD   = CLK_FREQ / OUT_SAMPLE_RATE;
localparam OUT_CNT_BITS = clog2(OUT_PERIOD);
localparam N_CNT_BITS   = clog2(N);

// Registers
reg [OUT_CNT_BITS-1:0] clk_counter;
reg [N_CNT_BITS-1:0]   sample_counter;
reg [DATA_WIDTH-1:0]   data_held;

//Conditions
wire out_tick = (clk_counter == OUT_PERIOD - 1);

always @(posedge clock) begin
	if (reset) begin
		clk_counter		<= 0;
		sample_counter	<= 0;
		m_axis_tdata	<= 0;
		data_held		<= 0;
		m_axis_tvalid 	<= 1'b0;
	end else begin
		
		if (out_tick) clk_counter <= 0;
        else          clk_counter <= clk_counter + 1;

		m_axis_tvalid <= 1'b0;

		if (out_tick) begin
            m_axis_tvalid <= 1'b1;

            if (sample_counter == 0) begin
                // First_smple
                data_held 		<= s_axis_tdata;
                m_axis_tdata  	<= s_axis_tdata;
            end else begin
                // Other samples
                m_axis_tdata  <= (HOLD == 1) ? data_held : {DATA_WIDTH{1'b0}};
            end

            if (sample_counter == N - 1) sample_counter <= 0;
            else                         sample_counter <= sample_counter + 1;
		end
	end
end

// Parameters check
initial begin
    if (OUT_SAMPLE_RATE % IN_SAMPLE_RATE != 0)
        $error("OUT_SAMPLE_RATE must be a multiple of IN_SAMPLE_RATE");
    if (CLK_FREQ % OUT_SAMPLE_RATE != 0)
        $error("CLK_FREQ must be a multiple of OUT_SAMPLE_RATE");
    if (OUT_SAMPLE_RATE < IN_SAMPLE_RATE)
        $error("OUT_SAMPLE_RATE must be >= IN_SAMPLE_RATE");
end

endmodule
