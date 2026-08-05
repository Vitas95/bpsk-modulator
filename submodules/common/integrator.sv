module integrator #(
    parameter DATA_WIDTH_IN = 8,
    parameter DATA_WIDTH_OUT = 9
)(
    input clk,
    input rst,

    input  [DATA_WIDTH_IN-1:0]  data_in,
    input                       valid_in,
    output logic [DATA_WIDTH_OUT-1:0] data_out
);

logic signed [DATA_WIDTH_OUT-1:0]  int_stage_in;
logic signed [DATA_WIDTH_OUT-1:0]  int_stage_out_q;

// assign int_stage_in = $signed(data_in);

always_ff @( posedge clk ) begin : integrator
    if (rst) begin
        int_stage_out_q <= '0;
        int_stage_in    <= '0;
    end else begin
        int_stage_out_q <= data_out;
        int_stage_in    <= $signed(data_in);
    end
end

assign data_out = int_stage_in + int_stage_out_q;


endmodule