module display_counters(
	input clock_80Mhz_i,
	input reset,
	output 	   [13:0] sec, 
	output reg [5:0]  dig,
	output sec_new
);

reg [25:0] disp_delay;
reg disp_tick;

// Display 50HZ delay
always @(posedge clock_80Mhz_i)	begin
	if (reset) begin
		disp_delay 	<= 0;
		disp_tick	<= 0;
	end else begin
		if (disp_delay == 399999) begin
			disp_delay 	<= 0;
			disp_tick	<= 1;
		end else begin
			disp_delay  <= disp_delay + 1;
			disp_tick	<= 0;
		end
	end
end

// Display update
always@ (posedge clock_80Mhz_i) begin
	if (reset) dig <= 6'b111110;
	else begin
		if (disp_tick)	dig <= {dig[4:0], dig[5]};
		else			dig <= dig;
	end
end

endmodule
			