module mac_fir #(
    parameter DATA_WIDTH  = 16,
    parameter COEFF_WIDTH = 16,
    parameter NUM_COEFF   = 11
) (
    input clk,
    input rst,

    input [DATA_WIDTH-1:0]  data_in,
    input                   valid_in,
    output logic [(DATA_WIDTH*2)-1:0] data_out,
    output logic                      valid_out
);

// Input shift register
logic signed [DATA_WIDTH-1:0] shift_reg [0:NUM_COEFF-1];

always_ff @(posedge clk) begin : InputShift    
    if (valid_in) begin
        shift_reg[0] <= $signed(data_in);
        for (int i = 1; i < NUM_COEFF; i++) begin
            shift_reg[i] <= shift_reg [i-1];
        end
    end
end

//Coeff memory
logic [2:0] coeff_addr;
logic signed [COEFF_WIDTH-1:0] coeff_from_mem;

coeff_mem #(
    .COEFF_WIDTH (COEFF_WIDTH),
    .NUM_COEFF   (NUM_COEFF)
) u_coeff_mem (
    .clk     (clk),
    .wr_en   (1'b0),      // No writing capabilities yet
    .wr_addr ('0),
    .wr_data ('0),
    .rd_addr (coeff_addr),
    .rd_data (coeff_from_mem)
);

// sign-extend (18 bit)
logic signed [17:0] coeff_reg;
assign coeff_reg = $signed(coeff_from_mem);

// State machine
typedef enum logic [1:0] { 
    IDLE,
    PAIRS,
    CENTER,
    VALID
} state;

state current_state, next_state;
logic [2:0] cycle_cnt;

always_ff @(posedge clk) begin : CycleCounter
    if (rst || current_state == IDLE) 
        cycle_cnt <= 0;
    else if (current_state == PAIRS) begin
        cycle_cnt <= cycle_cnt + 1;
    end
end

always_comb begin : state_machine
    case(current_state)
        IDLE: begin
            if (valid_in) next_state = PAIRS;
            else          next_state = IDLE;  
        end

        PAIRS: begin
            if(cycle_cnt == ((NUM_COEFF-1)/2)-1) next_state = CENTER;
            else               next_state = PAIRS;
        end
        
        CENTER: next_state = VALID;

        VALID: next_state = IDLE;
        
        default: next_state = IDLE;
    endcase
end

always_ff @(posedge clk) begin
    if (rst) current_state <= IDLE;
    else begin
        current_state <= next_state;
    end
end

// Multiplier behavioral DSP48A1
logic signed [17:0] pre_adder_comb, pre_adder_reg;

always_comb begin : PreAdder
    case(current_state)
        PAIRS: begin 
            pre_adder_comb = shift_reg[cycle_cnt] + shift_reg[(NUM_COEFF-1)-cycle_cnt];
            coeff_addr = cycle_cnt[2:0];
        end

        CENTER: begin
            pre_adder_comb = shift_reg[(NUM_COEFF-1)/2];
            coeff_addr = (NUM_COEFF-1)/2;
        end

        default: begin
            pre_adder_comb = '0;
            coeff_addr = '0;
        end
    endcase    
end

logic accum_clear;
always_ff @( posedge clk ) begin : CombToReg
    pre_adder_reg <= pre_adder_comb;
    accum_clear <= (cycle_cnt == 0);
end


(* use_dsp = "yes" *) logic signed [47:0] mult;
logic signed [47:0] post_adder;

always_ff @( posedge clk ) begin : MultiplyAccumulate
    
    // Multiplication always work
    mult <= coeff_reg * pre_adder_reg;

    if (accum_clear) begin
        post_adder <= mult;
    end else begin
        post_adder <= post_adder + mult;
    end
end

// Output piplining
logic [1:0] valid;

always_ff @(posedge clk) begin
    valid_out <= valid[1];
    if (rst) begin
        valid_out <= 0;
        valid[0] <= 0;
    end else if (current_state == VALID) begin
        valid[0] <= 1;
    end else begin
        valid[0] <= 0;
        valid[1] <= valid[0];
    end

    if(valid[1]) data_out <= post_adder;
end

endmodule