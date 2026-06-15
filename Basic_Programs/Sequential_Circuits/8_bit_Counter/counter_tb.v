module counter_tb;

reg clk,reset;

wire [7:0] count;

counter dut(clk,reset,count);

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
reset = 1;
#10;
reset = 0;
#100;
reset = 1; #10;
reset = 0; #10;
end
endmodule