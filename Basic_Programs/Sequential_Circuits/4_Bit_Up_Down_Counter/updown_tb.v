
module updown_tb;

reg clk,rst,up,down;
wire [3:0] count;

updown dut(clk,rst,up,down,count);

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
rst = 1; up = 0;  down = 0;#10;
rst = 0;
up = 1; down = 0;
#100;
up = 0; down = 1;
#100;
up = 1; down = 1;
#100;
end
endmodule 