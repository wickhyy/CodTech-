module pipeline_tb;

reg clk;
reg [7:0] A, B;
reg [1:0] opcode;
wire [7:0] out;

pipeline_processor uut(
    .clk(clk),
    .A(A),
    .B(B),
    .opcode(opcode),
    .out(out)
);

always #5 clk = ~clk;

initial begin
    clk = 0;

    A = 8'd20;
    B = 8'd10;

    opcode = 2'b00; #20;  // ADD
    opcode = 2'b01; #20;  // SUB
    opcode = 2'b10; #20;  // LOAD

    $finish;
end

endmodule
