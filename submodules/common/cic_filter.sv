module cic_filter #(
    parameter DATA_WIDTH = 16,
    parameter UPSAMPLING = 20,
    parameter STAGES = 4,
    parameter DIFF_DELAY = 1,
    localparam OUTPUT_WIDTH = DATA_WIDTH + STAGES * $clog2(UPSAMPLING * DIFF_DELAY)
) (
    input clk,
    input rst,

    input [DATA_WIDTH-1:0]  data_in,
    input                   valid_in,
    output logic [OUTPUT_WIDTH-1:0] data_out,
    output logic                      valid_out
);

`define _COMB_STAGE(name, data_input, data_output)\
    comb #(                                 \
    .DATA_WIDTH_IN($bits(data_input)),      \
    .DATA_WIDTH_OUT($bits(data_output)),    \
    .DIFF_DELAY(DIFF_DELAY)                 \
    ) ``name`` (                            \
    .clk(clk),                              \
    .rst(rst),                              \
    .data_in(``data_input``),               \
    .valid_in(valid_in),                    \
    .data_out(``data_output``)              \
    );

`define _INT_STAGE(name, data_input, data_output) \
    integrator #(                           \
        .DATA_WIDTH_IN($bits(data_input)),  \
        .DATA_WIDTH_OUT($bits(data_output)) \
    ) ``name`` (                            \
        .clk(clk),                          \
        .rst(rst),                          \
        .data_in(``data_input``),           \
        .valid_in(valid_in),                \
        .data_out(``data_output``)          \
    );

// ---------------------------------------------------------------
// Comb stages.
// ---------------------------------------------------------------
localparam int COMB_WIDTH = DATA_WIDTH + STAGES;
logic signed [COMB_WIDTH - 1 :0] comb_data [1:STAGES];

genvar i;
generate
    for (i = 0; i < STAGES; i = i + 1) begin : comb_gen
        localparam int W_IN  = DATA_WIDTH + i;
        localparam int W_OUT = (DATA_WIDTH + i + 1);

        if (i == 0) begin : g_first
            `_COMB_STAGE(u_comb, data_in, comb_data[i+1][W_OUT-1:0])
        end else begin : g_rest
            `_COMB_STAGE(u_comb, comb_data[i][W_IN-1:0], comb_data[i+1][W_OUT-1:0])
        end
    end
endgenerate

// ---------------------------------------------------------------
// Upsampling. Zero-stuffing.
// ---------------------------------------------------------------
logic signed [COMB_WIDTH - 1 : 0] upsampled;

always_ff @( posedge clk ) begin : upsampling
    if (valid_in)
        upsampled <= comb_data[STAGES];
    else
        upsampled <= '0; 
end

// ---------------------------------------------------------------
// Integrator stages.
// ---------------------------------------------------------------
localparam int TOTAL_GROWTH     = OUTPUT_WIDTH - COMB_WIDTH;
localparam int GROWTH_PER_STAGE = (TOTAL_GROWTH + STAGES - 1) / STAGES; // ceil

logic signed [OUTPUT_WIDTH-1:0] int_data [0:STAGES];
assign int_data[0][COMB_WIDTH-1:0] = upsampled;

generate
    for (i = 0; i < STAGES; i = i + 1) begin : int_gen
        localparam int W_IN_RAW  = COMB_WIDTH + i     * GROWTH_PER_STAGE;
        localparam int W_OUT_RAW = COMB_WIDTH + (i+1) * GROWTH_PER_STAGE;

        localparam int W_IN  = (i == 0)        ? COMB_WIDTH  :
                               (W_IN_RAW  > OUTPUT_WIDTH) ? OUTPUT_WIDTH : W_IN_RAW;
        localparam int W_OUT = (i == STAGES-1) ? OUTPUT_WIDTH :
                               (W_OUT_RAW > OUTPUT_WIDTH) ? OUTPUT_WIDTH : W_OUT_RAW;

        `_INT_STAGE(u_int, int_data[i][W_IN-1:0], int_data[i+1][W_OUT-1:0])
    end
endgenerate

// Output pipline
always_ff @( posedge clk ) begin : OutPipline
    if (rst) valid_out <= 0;
    else valid_out <= 1;
    data_out <= int_data[STAGES];
end

endmodule