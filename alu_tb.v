module alu_tb;

reg [7:0] A, B;
reg [2:0] sel;
wire [7:0] result;

alu uut(
    .A(A),
    .B(B),
    .sel(sel),
    .result(result)
);

initial begin
    A = 8'd15;
    B = 8'd5;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;

    $finish;
end

endmodule
