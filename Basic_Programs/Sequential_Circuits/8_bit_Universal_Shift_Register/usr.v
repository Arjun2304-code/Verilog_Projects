module usr(
input clk,reset,
input [1:0] s,
input [7:0] in,
output [7:0] out
);
reg [7:0] q;
always @(posedge clk) begin
if(reset)
q <= 0;
else begin
case(s)
//retention of data
2'b00 : q <= q;
//input
2'b01 : q <= in;
//shift left
2'b10 : q <= {q[6:0],1'b0};
//shift right
2'b11 :  q <= {1'b0,q[7:1]};
endcase
end
end
assign out = q;
endmodule


r