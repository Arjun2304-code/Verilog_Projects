module basic_gates(
input in1,
input in2,
input in3,
output out_and,
output out_or,
output out_xor,
output out_nand,
output out_nor,
output out_xnor,
output out_not
);

assign out_and = in1 & in2 & in3;
assign out_or = in1 | in2 | in3;
assign out_xor = in1 ^ in2 ^ in3;
assign out_nand = ~(in1 & in2 & in3);
assign out_nor = ~(in1 | in2 | in3);
assign out_xnor = ~(in1 ^ in2 ^ in3);
assign out_not = ~in1;

endmodule
