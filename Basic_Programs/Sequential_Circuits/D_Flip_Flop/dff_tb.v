module dff_tb;
reg d,clk,en,reset;
wire q;
dff dut(d,clk,en,reset,q);
integer i;
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
reset = 1;
d = 0;
en = 0;
#10;
reset = 0;
for(i = 0;i < 4;i = i + 1) begin
{d,en} = i;
#10;
end
end
endmodule