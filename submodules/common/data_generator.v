`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: data_generator
// Description:
//   Data generator based on an 8-bit LFSR (Linear Feedback Shift Register).
//   Every CLK_PER_VALID clock cycles, a new byte (0b11 or 0b01, depending on
//   the LSB of the LFSR) appears on m_axis_tdata, accompanied by a one-cycle
//   m_axis_tvalid pulse. The sequence is pseudo-random and repeats cyclically.
//   The interface is AXI4-Stream compatible (without tready).
//////////////////////////////////////////////////////////////////////////////////
module data_generator #(
	parameter CLK_PER_VALID = 8
)(
    input 		  		clock,
    input 		  		reset,
    output reg [1:0] 	m_axis_tdata,
	output reg 		 	m_axis_tvalid
);

//TODO Data Widthas parameter

// Registers
reg [7:0] shift_reg = 8'b1011_0111;
reg [7:0] valid_counter;

// Wires
wire shift_reg_xor;

assign shift_reg_xor = shift_reg[7]^~shift_reg[6];

always @(posedge clock) begin
	if (reset) begin 
		shift_reg 	  <= 8'b1011_0111;
		valid_counter <= 8'b0000_0000;
		m_axis_tvalid <= 0;					
	end else begin
		shift_reg <= {shift_reg[6:0],shift_reg_xor};
		if (valid_counter == (CLK_PER_VALID-1)) begin
			valid_counter <= 0;
			m_axis_tvalid <= 1;	
		end else begin
			valid_counter <= valid_counter + 1'b1;
			m_axis_tvalid <= 0;
		end
	end
end

always @(*) begin
	case(shift_reg[0])
		1'b0: 	 m_axis_tdata = 2'b11;
		1'b1: 	 m_axis_tdata = 2'b01;
		default: m_axis_tdata = 2'b00; 
	endcase
end

endmodule
