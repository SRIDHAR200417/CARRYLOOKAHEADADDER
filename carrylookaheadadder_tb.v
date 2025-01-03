module carrylookaheadadder_tb;
reg [3:0] a;
reg [3:0] b;
wire [3:0] sum;
wire [3:0] carry;
carrylookaheadadder uut(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
a = 4'b0000; b = 4'b0000;
#20;
a = 4'b0001; b = 4'b0001;
#20;
a = 4'b0010; b = 4'b0010;
#20;
a = 4'b0011; b = 4'b0011;
#20;
a = 4'b1010; b = 4'b0101;
#20;
a = 4'b1111; b = 4'b1111;
#20;
a = 4'b1001; b = 4'b1111;
#20;
$stop;
end
endmodule
