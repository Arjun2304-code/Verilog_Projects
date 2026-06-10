module fa(
input a,
input b,
input cin,
output s,
output cout
);
assign s = a ^ b ^ cin;
assign cout = (a&b)| (b&cin)| (a&cin);
endmodule
module rcas(
input [7:0] a,
input [7:0]b,
input cin,
output [7:0] s,
output cout
);
wire [7:0] bs;
wire [8:0] c;
assign c[0] = cin;
assign bs = b ^ {8{cin}};
genvar i;
generate
for(i = 0;i < 8;i = i + 1) begin : racadd
fa f(a[i],bs[i],c[i],s[i],c[i + 1]);
end
endgenerate
assign cout = c[8];
endmodule

