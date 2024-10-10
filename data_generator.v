`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Vitalii Kirillov
// 
// Create Date:    21:20:20 09/14/2024 
// Design Name: 
// Module Name:    data_generator 
// Project Name: 	 simple-modulator
// Target Devices: xc6slx16-3ftg256
// Tool versions: 
// Description: This module generates signed samples of data from ACSii symbols  
// with the sample rate of the input clock. Data output is cyclically repeated. 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module data_generator(
    input 		  		clock,
    input 		  		reset,
    output reg [7:0] samples
);

// Registers
reg [7:0] shift_reg = 8'b1011_0111;

// Connections
wire shift_reg_xor;
				 
always @(posedge clock) begin
	if (reset) begin 
		shift_reg <= 8'b1011_0111;					
	end else begin
		shift_reg <= {shift_reg[6:0],shift_reg_xor};
	end
end

assign shift_reg_xor = shift_reg[7]^~shift_reg[6];

always @(*) begin
	case(shift_reg[0])
		1'b0: samples = 8'b1111_1111;
		1'b1: samples = 8'b0000_0001;
	endcase
end

endmodule
