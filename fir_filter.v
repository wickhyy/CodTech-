module fir_filter(
    input clk,
    input [7:0] x,
    output reg [15:0] y
);

reg [7:0] d1, d2, d3;

parameter h0 = 1;
parameter h1 = 2;
parameter h2 = 2;
parameter h3 = 1;

always @(posedge clk) begin
    d1 <= x;
    d2 <= d1;
    d3 <= d2;

    y <= h0*x + h1*d1 + h2*d2 + h3*d3;
end

endmodule
