module mux21_tb;
reg s,i1,i2;
wire out;

mux21 dut(i1,i2,s,out);

integer i;

initial begin

for(i = 0;i < 8;i = i + 1) begin

{i1,i2,s} = i; #10;

end
end

endmodule
