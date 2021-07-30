
module sbox7(sout7,sin7);
output [3:0]sout7;
input [5:0]sin7;
reg [1:0]row;
reg [3:0]col;
reg [3:0] sbox[3:0][15:0];
initial
begin
sbox[0][0] = 4;
sbox[0][1] = 11; 
sbox[0][2] = 2; 
sbox[0][3] = 14; 
sbox[0][4] = 15; 
sbox[0][5] = 0; 
sbox[0][6] = 8; 
sbox[0][7] = 13; 
sbox[0][8] = 3; 
sbox[0][9] = 12; 
sbox[0][10] = 9; 
sbox[0][11] = 7; 
sbox[0][12] = 5; 
sbox[0][13] = 10; 
sbox[0][14] = 6; 
sbox[0][15] = 1; 
sbox[1][0] = 13;
sbox[1][1] = 0; 
sbox[1][2] = 11; 
sbox[1][3] = 7; 
sbox[1][4] = 4; 
sbox[1][5] = 9; 
sbox[1][6] = 1; 
sbox[1][7] = 10; 
sbox[1][8] = 14; 
sbox[1][9] = 3; 
sbox[1][10] = 5; 
sbox[1][11] = 12; 
sbox[1][12] = 2; 
sbox[1][13] = 15; 
sbox[1][14] = 8; 
sbox[1][15] = 6;
sbox[2][0] = 1; 
sbox[2][1] = 4; 
sbox[2][2] = 11; 
sbox[2][3] = 13; 
sbox[2][4] = 12; 
sbox[2][5] = 3; 
sbox[2][6] = 7; 
sbox[2][7] = 14; 
sbox[2][8] = 10; 
sbox[2][9] = 15; 
sbox[2][10] = 6; 
sbox[2][11] = 8; 
sbox[2][12] = 0; 
sbox[2][13] = 5; 
sbox[2][14] = 9; 
sbox[2][15] = 2; 
sbox[3][0] = 6; 
sbox[3][1] = 11; 
sbox[3][2] = 13; 
sbox[3][3] = 8; 
sbox[3][4] = 1; 
sbox[3][5] = 4; 
sbox[3][6] = 10; 
sbox[3][7] = 7; 
sbox[3][8] = 9; 
sbox[3][9] = 5; 
sbox[3][10] = 0; 
sbox[3][11] = 15; 
sbox[3][12] = 14; 
sbox[3][13] = 2; 
sbox[3][14] = 3; 
sbox[3][15] = 12;

assign row = {sin7[5],sin7[0]};
assign col = sin7[4:1];

end
assign sout7 = sbox[row][col];
endmodule


