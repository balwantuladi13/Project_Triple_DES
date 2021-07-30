
module sbox3(sout3,sin3);
output [3:0]sout3;
input [5:0]sin3;
reg [1:0]row;
reg [3:0]col;
reg [3:0] sbox[3:0][15:0];
initial
begin
sbox[0][0] = 10;
sbox[0][1] = 0; 
sbox[0][2] = 9; 
sbox[0][3] = 14; 
sbox[0][4] = 6; 
sbox[0][5] = 3; 
sbox[0][6] = 15; 
sbox[0][7] = 5; 
sbox[0][8] = 1; 
sbox[0][9] = 13; 
sbox[0][10] =12; 
sbox[0][11] =7; 
sbox[0][12] = 11; 
sbox[0][13] = 4; 
sbox[0][14] = 2; 
sbox[0][15] = 8; 
sbox[1][0] = 13;
sbox[1][1] = 7; 
sbox[1][2] = 0; 
sbox[1][3] = 9; 
sbox[1][4] = 3; 
sbox[1][5] = 4; 
sbox[1][6] = 6; 
sbox[1][7] = 10; 
sbox[1][8] = 2; 
sbox[1][9] = 8; 
sbox[1][10] =5; 
sbox[1][11] =14; 
sbox[1][12] =12; 
sbox[1][13] = 11; 
sbox[1][14] = 15; 
sbox[1][15] = 1;
sbox[2][0] = 13; 
sbox[2][1] = 6; 
sbox[2][2] = 4; 
sbox[2][3] = 9; 
sbox[2][4] = 8; 
sbox[2][5] = 15; 
sbox[2][6] = 3; 
sbox[2][7] = 0; 
sbox[2][8] = 11; 
sbox[2][9] = 1; 
sbox[2][10] = 2; 
sbox[2][11] = 12; 
sbox[2][12] = 5; 
sbox[2][13] = 10; 
sbox[2][14] = 14; 
sbox[2][15] = 7; 
sbox[3][0] = 1; 
sbox[3][1] = 10; 
sbox[3][2] = 13; 
sbox[3][3] = 0; 
sbox[3][4] = 6; 
sbox[3][5] = 9; 
sbox[3][6] = 8; 
sbox[3][7] = 7; 
sbox[3][8] = 4; 
sbox[3][9] = 15; 
sbox[3][10] = 14; 
sbox[3][11] = 3; 
sbox[3][12] = 11; 
sbox[3][13] = 5; 
sbox[3][14] = 2; 
sbox[3][15] = 12;

assign row = {sin3[5],sin3[0]};
assign col = sin3[4:1];

end
assign sout3 = sbox[row][col];
endmodule


