module display_decoder(
	input 		 clock,
	input		 reset,
	input 		[19:0] 	bcd,
	input 		[5:0] 	dig,
	output reg 	[7:0] 	segment
);

// Vector which save last converted bin 2 bcd number
reg [19:0] current_bcd;

// Vector which store curretly displayed digit
reg [3:0] digit;

always @(posedge clock) begin
	if (reset) current_bcd <= 0;
	else 	   current_bcd <= bcd;
end
	
always @(*)
	case(dig)
		6'b011111: digit = current_bcd[3:0];
		6'b101111: digit = current_bcd[7:4];
		6'b110111: digit = current_bcd[11:8];
		6'b111011: digit = current_bcd[15:12];
		6'b111101: digit = current_bcd[19:16];
		6'b111110: digit = 4'd0;
		default:   digit = 4'hF;
	endcase
	
always @(*)
	case(digit)
		0:  segment = 8'b11000000;
		1:	segment = 8'b11111001;
		2:	segment = 8'b10100100;
		3:	segment = 8'b10110000;
		4:	segment = 8'b10011001;
		5:	segment = 8'b10010010;
		6:	segment = 8'b10000010;
		7:	segment = 8'b11111000;
		8:	segment = 8'b10000000;
		9:	segment = 8'b10010000;
		default: segment = 8'b11000000;
	endcase

endmodule