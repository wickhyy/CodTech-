module pipeline_processor(
    input clk,
    input [7:0] A,
    input [7:0] B,
    input [1:0] opcode,
    output reg [7:0] out
);

reg [7:0] IF_ID_A, IF_ID_B;
reg [7:0] ID_EX_A, ID_EX_B;
reg [7:0] EX_WB;

always @(posedge clk) begin
    // Stage 1: Fetch
    IF_ID_A <= A;
    IF_ID_B <= B;

    // Stage 2: Decode
    ID_EX_A <= IF_ID_A;
    ID_EX_B <= IF_ID_B;

    // Stage 3: Execute
    case(opcode)
        2'b00: EX_WB <= ID_EX_A + ID_EX_B;  // ADD
        2'b01: EX_WB <= ID_EX_A - ID_EX_B;  // SUB
        2'b10: EX_WB <= A;                  // LOAD A
        default: EX_WB <= 8'b0;
    endcase

    // Stage 4: Write Back
    out <= EX_WB;
end

endmodule
