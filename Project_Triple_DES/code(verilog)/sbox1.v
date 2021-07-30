module sbox1(sout1,sin1);
output [3:0]sout1;
input [5:0]sin1;
reg [1:0]row;
reg [3:0]col;
reg [3:0] sbox[3:0][15:0];
initial
begin
sbox[0][0] = 14;
sbox[0][1] = 4; 
sbox[0][2] = 13; 
sbox[0][3] = 1; 
sbox[0][4] = 2; 
sbox[0][5] = 15; 
sbox[0][6] = 11; 
sbox[0][7] = 8; 
sbox[0][8] = 3; 
sbox[0][9] = 10; 
sbox[0][10] = 6; 
sbox[0][11] = 12; 
sbox[0][12] = 5; 
sbox[0][13] = 9; 
sbox[0][14] = 0; 
sbox[0][15] = 7; 
sbox[1][0] = 0;
sbox[1][1] = 15; 
sbox[1][2] = 7; 
sbox[1][3] = 4; 
sbox[1][4] = 14; 
sbox[1][5] = 2; 
sbox[1][6] = 13; 
sbox[1][7] = 1; 
sbox[1][8] = 10; 
sbox[1][9] = 6; 
sbox[1][10] = 12; 
sbox[1][11] = 11; 
sbox[1][12] = 9; 
sbox[1][13] = 5; 
sbox[1][14] = 3; 
sbox[1][15] = 8;
sbox[2][0] = 4; 
sbox[2][1] = 1; 
sbox[2][2] = 14; 
sbox[2][3] = 8; 
sbox[2][4] = 13; 
sbox[2][5] = 6; 
sbox[2][6] = 2; 
sbox[2][7] = 11; 
sbox[2][8] = 15; 
sbox[2][9] = 12; 
sbox[2][10] = 9; 
sbox[2][11] = 7; 
sbox[2][12] = 3; 
sbox[2][13] = 10; 
sbox[2][14] = 5; 
sbox[2][15] = 0; 
sbox[3][0] = 15; 
sbox[3][1] = 12; 
sbox[3][2] = 8; 
sbox[3][3] = 2; 
sbox[3][4] = 4; 
sbox[3][5] = 9; 
sbox[3][6] = 1; 
sbox[3][7] = 7; 
sbox[3][8] = 5; 
sbox[3][9] = 11; 
sbox[3][10] = 3; 
sbox[3][11] = 14; 
sbox[3][12] = 10; 
sbox[3][13] = 0; 
sbox[3][14] = 6; 
sbox[3][15] = 13;

assign row = {sin1[5],sin1[0]};
assign col = sin1[4:1];

end
assign sout1 = sbox[row][col];
endmodule



