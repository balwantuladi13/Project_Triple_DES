
module sbox6(sout6,sin6);
output [3:0]sout6;
input [5:0]sin6;
reg [1:0]row;
reg [3:0]col;
reg [3:0] sbox[3:0][15:0];
initial
begin
sbox[0][0] = 12;
sbox[0][1] = 1; 
sbox[0][2] = 10; 
sbox[0][3] = 15; 
sbox[0][4] = 9; 
sbox[0][5] = 2; 
sbox[0][6] = 6; 
sbox[0][7] = 8; 
sbox[0][8] = 0; 
sbox[0][9] = 13; 
sbox[0][10] = 3; 
sbox[0][11] = 4; 
sbox[0][12] = 14; 
sbox[0][13] = 7; 
sbox[0][14] = 5; 
sbox[0][15] = 11; 
sbox[1][0] = 10;
sbox[1][1] = 15; 
sbox[1][2] = 4; 
sbox[1][3] = 2; 
sbox[1][4] = 7; 
sbox[1][5] = 12; 
sbox[1][6] = 9; 
sbox[1][7] = 5; 
sbox[1][8] = 6; 
sbox[1][9] = 1; 
sbox[1][10] = 13; 
sbox[1][11] = 14; 
sbox[1][12] = 0; 
sbox[1][13] = 11; 
sbox[1][14] = 3; 
sbox[1][15] = 8;
sbox[2][0] = 9; 
sbox[2][1] = 14; 
sbox[2][2] = 15; 
sbox[2][3] = 5; 
sbox[2][4] = 2; 
sbox[2][5] = 8; 
sbox[2][6] = 12; 
sbox[2][7] = 3; 
sbox[2][8] = 7; 
sbox[2][9] = 0; 
sbox[2][10] = 4; 
sbox[2][11] = 10; 
sbox[2][12] = 1; 
sbox[2][13] = 13; 
sbox[2][14] = 11; 
sbox[2][15] = 6; 
sbox[3][0] = 4; 
sbox[3][1] = 3; 
sbox[3][2] = 2; 
sbox[3][3] = 12; 
sbox[3][4] = 9; 
sbox[3][5] = 5; 
sbox[3][6] = 15; 
sbox[3][7] = 10; 
sbox[3][8] = 11; 
sbox[3][9] = 14; 
sbox[3][10] = 1; 
sbox[3][11] = 7; 
sbox[3][12] = 6; 
sbox[3][13] = 0; 
sbox[3][14] = 8; 
sbox[3][15] = 13;

assign row = {sin6[5],sin6[0]};
assign col = sin6[4:1];

end
assign sout6 = sbox[row][col];
endmodule


