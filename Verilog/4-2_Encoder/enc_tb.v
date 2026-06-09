module enc_tb;
reg [3:0] d;
wire [1:0] q;
enc dut(d,q);
integer i;
initial begin
for(i = 0;i < 16;i = i + 1) begin
d = i;
#10;
end
end
endmodule