module fadd_tb;
reg a,b,cin;
wire sum,cout;

fadd dut(a,b,cin,sum,cout);

integer i;

initial begin

for(i = 0; i < 8; i = i + 1) begin

{a,b,cin} = i;
#10;

end
end
endmodule
