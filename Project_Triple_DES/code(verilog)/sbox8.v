
module sbox8(sout8,sin8);
output [3:0]sout8;
input [5:0]sin8;
reg [1:0]row;
reg [3:0]col;
reg [3:0] sbox[3:0][15:0];
initial
begin
sbox[0][0] = 13;
sbox[0][1] = 2; 
sbox[0][2] = 8; 
sbox[0][3] = 4; 
sbox[0][4] = 6; 
sbox[0][5] = 15; 
sbox[0][6] = 11; 
sbox[0][7] = 1; 
sbox[0][8] = 10; 
sbox[0][9] = 9; 
sbox[0][10] = 3; 
sbox[0][11] = 14; 
sbox[0][12] = 5; 
sbox[0][13] = 0; 
sbox[0][14] = 12; 
sbox[0][15] = 7; 
sbox[1][0] = 1;
sbox[1][1] = 15; 
sbox[1][2] = 13; 
sbox[1][3] = 8; 
sbox[1][4] = 10; 
sbox[1][5] = 3; 
sbox[1][6] = 7; 
sbox[1][7] = 4;
sbox[1][8] = 12; 
sbox[1][9] = 5; 
sbox[1][10] = 6; 
sbox[1][11] = 11; 
sbox[1][12] = 0; 
sbox[1][13] = 14; 
sbox[1][14] = 9; 
sbox[1][15] = 2;
sbox[2][0] = 7; 
sbox[2][1] = 11; 
sbox[2][2] = 4; 
sbox[2][3] = 1; 
sbox[2][4] = 9; 
sbox[2][5] = 12; 
sbox[2][6] = 14; 
sbox[2][7] = 2; 
sbox[2][8] = 0; 
sbox[2][9] = 6; 
sbox[2][10] = 10; 
sbox[2][11] = 13; 
sbox[2][12] = 15; 
sbox[2][13] = 3; 
sbox[2][14] = 5; 
sbox[2][15] = 8; 
sbox[3][0] = 2; 
sbox[3][1] = 1; 
sbox[3][2] = 14; 
sbox[3][3] = 7; 
sbox[3][4] = 4; 
sbox[3][5] = 10; 
sbox[3][6] = 8; 
sbox[3][7] = 13; 
sbox[3][8] = 15; 
sbox[3][9] = 12; 
sbox[3][10] = 9; 
sbox[3][11] = 0; 
sbox[3][12] = 3; 
sbox[3][13] = 5; 
sbox[3][14] = 6; 
sbox[3][15] = 11;

assign row = {sin8[5],sin8[0]};
assign col = sin8[4:1];

end
assign sout8 = sbox[row][col];
endmodule


