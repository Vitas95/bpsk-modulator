`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:26 09/15/2024 
// Design Name: 
// Module Name:    state_machine 
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
module state_machine(
	input clock,
	input reset,
	
	// Input signals for the state machine
   input button_1,
   input button_2,
   input button_3,
   input button_4,
   
	// Output is a current state of the machine
	output [1:0] state
);

// Registers
reg [1:0] current_state,
			 next_state;
			 
// States of the state machine
parameter [1:0] SHOW_UPSAMPLED = 2'b00,
					 SHOW_SHAPED	 = 2'b01,
					 SHOW_FILTERED	 = 2'b10,
					 SHOW_MODULATOR = 2'b11;
			 
always @(*) begin
	case(current_state)
		SHOW_UPSAMPLED: begin
			if (button_2) next_state = SHOW_SHAPED;
			else if (button_3) next_state = SHOW_FILTERED;
			else if (button_4) next_state = SHOW_MODULATOR;
			else next_state = SHOW_UPSAMPLED;
		end 
		
		SHOW_SHAPED: begin
			if (button_1) next_state = SHOW_UPSAMPLED;
			else if (button_3) next_state = SHOW_FILTERED;
			else if (button_4) next_state = SHOW_MODULATOR;
			else next_state = SHOW_SHAPED;
		end 
		
		SHOW_FILTERED: begin
			if (button_1) next_state = SHOW_UPSAMPLED;
			else if (button_2) next_state = SHOW_SHAPED;
			else if (button_4) next_state = SHOW_MODULATOR;
			else next_state = SHOW_FILTERED;
		end 
		
		SHOW_MODULATOR: begin
			if (button_1) next_state = SHOW_UPSAMPLED;
			else if (button_2) next_state = SHOW_SHAPED;
			else if (button_3) next_state = SHOW_FILTERED;
			else next_state = SHOW_MODULATOR;
		end
		
		default: next_state = SHOW_UPSAMPLED;
	endcase
end

always @(posedge clock) begin
	if (reset) current_state <= SHOW_UPSAMPLED;
	else current_state <= next_state;
end

assign state = current_state;

endmodule
