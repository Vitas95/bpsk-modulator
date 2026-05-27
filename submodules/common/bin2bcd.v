module bin2bcd(
    input      [15:0] bin,
    output reg [19:0] bcd
);

integer i;

always @(*) begin
    bcd=0;
    for (i=0;i<16;i=i+1) begin //Iterate once for each bit in input number
        if (bcd[3:0]    >= 5) bcd[3:0]   = bcd[3:0]   + 3;
        if (bcd[7:4]    >= 5) bcd[7:4]   = bcd[7:4]   + 3;
        if (bcd[11:8]   >= 5) bcd[11:8]  = bcd[11:8]  + 3;
        if (bcd[15:12]  >= 5) bcd[15:12] = bcd[15:12] + 3;
        if (bcd[19:16]  >= 5) bcd[19:16] = bcd[19:16] + 3;
    bcd = {1'b0,bcd[18:0],bin[15-i]}; //Shift one bit, and shift in proper bit from input
    end
end

endmodule
