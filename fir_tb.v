module fir_tb;

reg clk;
reg [7:0] x;
wire [15:0] y;

fir_filter uut(
    .clk(clk),
    .x(x),
    .y(y)
);

always #5 clk = ~clk;

initial begin
    clk = 0;

    x = 8'd1;  #10;
    x = 8'd2;  #10;
    x = 8'd3;  #10;
    x = 8'd4;  #10;
    x = 8'd5;  #10;

    $finish;
end

endmodule
