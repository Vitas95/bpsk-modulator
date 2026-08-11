module coeff_mem #(
    parameter COEFF_WIDTH = 16,
    parameter NUM_COEFF  = 11,
    parameter ADDR_WIDTH  = $clog2((NUM_COEFF+1)/2)
) (
    input  logic                        clk,

    // Write port
    input  logic                        wr_en,
    input  logic [ADDR_WIDTH-1:0]       wr_addr,
    input  logic signed [COEFF_WIDTH-1:0] wr_data,

    // Read port (synchronous, registered output)
    input  logic [ADDR_WIDTH-1:0]       rd_addr,
    output logic signed [COEFF_WIDTH-1:0] rd_data
);

    // // Symmetric FIR coefficients without cic compensation
    // (* rom_style = "distributed" *) logic signed [COEFF_WIDTH-1:0] mem [0:(NUM_COEFF+1)/2-1] = '{
    // -4, 0, 17, 38, 57, 64
    // };

    // Symmetric FIR coefficients with cic compensation
    (* rom_style = "distributed" *) logic signed [COEFF_WIDTH-1:0] mem [0:(NUM_COEFF+1)/2-1] = '{
    2, -12, -4, 26, 78, 128, 150
    };


    always_ff @(posedge clk) begin
        if (wr_en) begin
            mem[wr_addr] <= wr_data;
        end
        rd_data <= mem[rd_addr];
    end

endmodule