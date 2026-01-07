module ram_tb;

reg clk, we;
reg [3:0] addr;
reg [7:0] data_in;
wire [7:0] data_out;

sync_ram uut(
    .clk(clk),
    .we(we),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out)
);

always #5 clk = ~clk;

initial begin
    clk = 0;

    we = 1;
    addr = 4'd3; data_in = 8'd25; #10;
    addr = 4'd5; data_in = 8'd40; #10;

    we = 0;
    addr = 4'd3; #10;
    addr = 4'd5; #10;

    $finish;
end

endmodule
