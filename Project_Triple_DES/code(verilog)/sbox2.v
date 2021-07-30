
module sbox2(sout2,sin2);
output [3:0]sout2;
input [5:0]sin2;
reg [1:0]row;
reg [3:0]col;
reg [3:0] sbox[3:0][15:0];
initial
begin
sbox[0][0] = 15;
sbox[0][1] = 1; 
sbox[0][2] = 8; 
sbox[0][3] = 14; 
sbox[0][4] = 6; 
sbox[0][5] = 11; 
sbox[0][6] = 3; 
sbox[0][7] = 4; 
sbox[0][8] = 9; 
sbox[0][9] = 7; 
sbox[0][10] = 2; 
sbox[0][11] = 13; 
sbox[0][12] = 12; 
sbox[0][13] = 0; 
sbox[0][14] = 5; 
sbox[0][15] = 10; 
sbox[1][0] = 3;
sbox[1][1] = 13; 
sbox[1][2] = 4; 
sbox[1][3] = 7; 
sbox[1][4] = 15; 
sbox[1][5] = 2; 
sbox[1][6] = 8; 
sbox[1][7] = 14; 
sbox[1][8] = 12; 
sbox[1][9] = 0; 
sbox[1][10] = 1; 
sbox[1][11] = 10; 
sbox[1][12] = 6; 
sbox[1][13] = 9; 
sbox[1][14] = 11; 
sbox[1][15] = 5;
sbox[2][0] = 0; 
sbox[2][1] = 14; 
sbox[2][2] = 7; 
sbox[2][3] = 11; 
sbox[2][4] = 10; 
sbox[2][5] = 4; 
sbox[2][6] = 13; 
sbox[2][7] = 1; 
sbox[2][8] = 5; 
sbox[2][9] = 8; 
sbox[2][10] =12; 
sbox[2][11] = 6; 
sbox[2][12] = 9; 
sbox[2][13] = 3; 
sbox[2][14] = 2; 
sbox[2][15] = 15; 
sbox[3][0] = 13; 
sbox[3][1] = 8; 
sbox[3][2] = 10; 
sbox[3][3] = 1; 
sbox[3][4] = 3; 
sbox[3][5] = 15; 
sbox[3][6] = 4; 
sbox[3][7] = 2; 
sbox[3][8] = 11; 
sbox[3][9] = 6; 
sbox[3][10] = 7; 
sbox[3][11] = 12; 
sbox[3][12] = 0; 
sbox[3][13] = 5; 
sbox[3][14] = 14; 
sbox[3][15] = 9;

assign row = {sin2[5],sin2[0]};
assign col = sin2[4:1];

end
assign sout2 = sbox[row][col];
endmodule


