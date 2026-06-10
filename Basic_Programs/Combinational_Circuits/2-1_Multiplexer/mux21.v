module mux21(
input i1,i2,s,
output out);

assign out = (s) ? i1 : i2;

endmodule