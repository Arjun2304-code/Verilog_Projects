module enc(
input [3:0] d,
output reg [1:0] q
);
always @(*) begin
case (d)
4'b1000: q = 2'b00;
4'b0100: q = 2'b01;
4'b0010: q = 2'b10;
4'b0001: q = 2'b11;
default : q = 2'b00;
endcase
end 
endmodule