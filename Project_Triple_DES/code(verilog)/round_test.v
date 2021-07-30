module stim_round_test;
wire [1:32]r_out,l_out;
reg [1:32]l_in,r_in;
reg [1:48]key;
round round_obj(l_out,r_out,l_in,r_in,key);

initial
begin
$monitor("L_out=%b,R_out=%b,L_in=%b,R_in=%b,key=%b",l_out,r_out,l_in,r_in,key);
l_in=32'b1100_1100_0000_0000_1100_1100_1111_1111;
r_in=32'b1111_0000_1010_1010_1111_0000_1010_1010;
key=48'b000110_110000_001011_101111_111111_000111_000001_110010;
end
endmodule