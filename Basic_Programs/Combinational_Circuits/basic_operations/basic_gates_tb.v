module basic_gates_tb;
reg in1,in2,in3;
wire out_and,out_or,out_xor,out_nand,out_nor,out_xnor,out_not;

basic_gates dut(in1,in2,in3,out_and,out_or,out_xor,out_nand,out_nor,out_xnor,out_not);

integer i;

initial begin
for(i = 0; i < 8 ; i = i + 1) begin
{in1,in2,in3} = i;
#10;
end
end
endmodule