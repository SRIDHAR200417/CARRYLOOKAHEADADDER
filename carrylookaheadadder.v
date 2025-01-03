module carrylookaheadadder(a,b,sum,carry);
input [3:0] a;
input [3:0] b;
output [3:0] sum;
output [3:0] carry;
wire [3:0] p, g;
assign p = a ^ b;
assign g = a & b;
assign carry[0] = g[0];
assign carry[1] = g[1] | (g[0] & p[1]);
assign carry[2] = g[2] | (g[1] & p[2]) | (g[0] & p[1] & p[2]);
assign carry[3] = g[3] | (g[2] & p[3]) | (g[1] & p[2] & p[3]) | (g[0] & p[1] &
p[2] & p[3]);
assign sum[0] = p[0];
assign sum[1] = p[1] ^ carry[0];
assign sum[2] = p[2] ^ carry[1];
assign sum[3] = p[3] ^carry[2];
endmodule
