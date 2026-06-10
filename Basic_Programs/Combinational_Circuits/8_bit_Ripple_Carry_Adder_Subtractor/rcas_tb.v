module rcas_tb;
reg [7:0] a;
reg [7:0] b;
reg cin;
wire cout;
wire [7:0] s;
rcas uut(a,b,cin,s,cout);
integer i,j,k;
initial begin
for(k = 0;k < 2;k = k + 1) begin
cin = k;
for(i = 0;i < 32;i = i + 1) begin
for(j = 0;j < 32;j = j + 1) begin
a = i;
b = j;
#10;
end
end
end
end 
endmodule