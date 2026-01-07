module alu(
    input [7:0] A,
    input [7:0] B,
    input [2:0] sel,
    output reg [7:0] result
);

always @(*) begin
    case(sel)
        3'b000: result = A + B;      // Addition
        3'b001: result = A - B;      // Subtraction
        3'b010: result = A & B;      // AND
        3'b011: result = A | B;      // OR
        3'b100: result = ~A;         // NOT A
        default: result = 8'b00000000;
    endcase
end

endmodule
