module mux41_tb;
reg a,b,c,d;
reg [1:0] sel;
wire s;

mux41 dut(a,b,c,d,sel,s);

integer i;

initial begin

a = 1; b = 0; c = 1; d = 0;

sel = 0; #10;
sel = 1; #10;
sel = 2; #10;
sel = 3; #10;
end

endmodule
