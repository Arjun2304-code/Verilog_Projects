module usr_tb;

reg clk,reset;
reg [1:0] s;
reg [7:0] in;
wire [7:0] out;

usr dut(clk,reset,s,in,out);

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
reset = 1;
#10;
reset = 0;
s = 2'b00;
in = 8'b00001000;
#10;
s = 2'b01;
in = 8'b00101100;
#10;
s = 2'b10;
#10;
s = 2'b11;
#10;
end
endmodule