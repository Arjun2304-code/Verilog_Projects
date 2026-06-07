module mux41(
input a,b,c,d,
input [1:0] sel,
output reg s
);

always @(*) begin
case(sel) 
2'b00 : s = a;
2'b01 : s = b;
2'b10 : s = c;
2'b11 : s = d;
endcase
end
endmodule