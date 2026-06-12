module updown(
input clk,
input rst,
input up,
input down,
output reg [3:0] count
);
always @(posedge clk) begin
if (rst)
count <= 4'b0000;
else begin
if (up && !down)
count <= count + 1;
else if(down && !up)
count <= count - 1;
end 
end
endmodule

