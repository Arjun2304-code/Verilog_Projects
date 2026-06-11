module dff(
input d,clk,en,reset,
output reg q
);
always @(posedge clk) begin
if(reset)
q <= 0;
else if(en) 
q <= d;
end 
endmodule

