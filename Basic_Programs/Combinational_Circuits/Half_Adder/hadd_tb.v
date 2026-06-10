module hadd_tb;
reg a,b;
wire sum,cout;

hadd dut(a,b,sum,cout);

integer i;

initial begin

for(i = 0; i < 4; i = i + 1) begin

{a,b} = i;
#10;

end
end
endmodule
