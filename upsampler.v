`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Vitalii Kirillov
// 
// Create Date:    22:39:24 09/14/2024 
// Design Name: 
// Module Name:    upsampler 
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
module upsampler
#( parameter N = 4,
	parameter HOLD = 1
)(
	input  		 clock,
	input  		 reset,
	input  [7:0] data_in,
	output reg [7:0] upsampled_data
);

parameter COUNTER_DEPTH = $clog2(N);

// Registers
reg [COUNTER_DEPTH-1:0] counter;

//Conditions
wire reset_counter = (counter == N);

always @(posedge clock) begin
	if (reset) begin
		upsampled_data <= 0;
		counter 			<= 0;
	end else begin
		
		//Count samples for output
		if (reset_counter) counter <= 0;
		else counter <= counter + 1;
		
		// Output data
		if (counter == 0) upsampled_data <= data_in;
		else begin
			if (HOLD == 1) upsampled_data <= data_in;
			else if (HOLD == 0) upsampled_data <= 8'b0000_0000;
		end
	end
end

endmodule
