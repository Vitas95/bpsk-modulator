module comb #(
    parameter DATA_WIDTH_IN = 8,
    parameter DATA_WIDTH_OUT = 9,
    parameter DIFF_DELAY = 1
)(
    input clk,
    input rst,

    input  logic [DATA_WIDTH_IN-1:0]  data_in,
    input                             valid_in,
    output logic [DATA_WIDTH_OUT-1:0] data_out
);

// Combinational stage
logic signed [DATA_WIDTH_IN-1:0] comb_stage_in [0:DIFF_DELAY];

always_ff @( posedge clk ) begin : comb
    if (rst) begin
        for (int i = 0; i <= DIFF_DELAY; i++) begin
            comb_stage_in[i] <= 0;
        end
        data_out <= 0;
    end else if (valid_in) begin
        for (int i = DIFF_DELAY; i > 0; i--)
            comb_stage_in[i] <= comb_stage_in[i-1];
        comb_stage_in[0] <= $signed(data_in);
        data_out <= comb_stage_in [0] - comb_stage_in [DIFF_DELAY];
    end else begin
        for (int i = 0; i < DIFF_DELAY; i++) begin
            comb_stage_in[i] <= comb_stage_in[i];
        end
    end
end

endmodule