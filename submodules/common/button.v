`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:55:32 09/12/2024 
// Design Name: 
// Module Name:    button 
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
module button(
	input  clock,
	input  button_n,
	output out
);

// Registers
reg        button_q, button_q2;
reg        rs, rs_q;
reg [13:0] counter;

// Conditions
wire increment = button_q2 & ~&counter;
wire decrement = ~button_q2 & |counter;

always @(posedge clock) begin
  // Processing input button
  button_q 	= ~button_n;
  button_q2 = button_q;
  
  if (increment)
    counter <= counter + 1;
  else if (decrement)
    counter <= counter - 1;
	 
  if (&counter)
    rs <= 1;
  else if (~|counter)
    rs <= 0;
	 
  rs_q <= rs;
end

// Output of the module is a front 
// of the button signal
assign out = rs & ~rs_q;

endmodule
