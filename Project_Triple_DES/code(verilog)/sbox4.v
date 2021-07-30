module sbox4(sout4,sin4);
output [3:0]sout4;
input [5:0]sin4;
reg [1:0]row;
reg [3:0]col;
reg [3:0] sbox[3:0][15:0];
initial
begin
sbox[0][0] = 7;
sbox[0][1] = 13; 
sbox[0][2] = 14; 
sbox[0][3] = 3; 
sbox[0][4] = 0; 
sbox[0][5] = 6; 
sbox[0][6] = 9; 
sbox[0][7] = 10; 
sbox[0][8] = 1; 
sbox[0][9] = 2; 
sbox[0][10] = 8; 
sbox[0][11] = 5; 
sbox[0][12] = 11; 
sbox[0][13] = 12; 
sbox[0][14] = 4; 
sbox[0][15] = 15; 
sbox[1][0] = 13;
sbox[1][1] = 8; 
sbox[1][2] = 11; 
sbox[1][3] = 5; 
sbox[1][4] = 6; 
sbox[1][5] = 15; 
sbox[1][6] = 0; 
sbox[1][7] = 3; 
sbox[1][8] = 4; 
sbox[1][9] = 7; 
sbox[1][10] = 2; 
sbox[1][11] = 12; 
sbox[1][12] = 1; 
sbox[1][13] = 10; 
sbox[1][14] = 14; 
sbox[1][15] = 9;
sbox[2][0] = 10; 
sbox[2][1] = 6; 
sbox[2][2] = 9; 
sbox[2][3] = 0; 
sbox[2][4] = 12; 
sbox[2][5] = 11; 
sbox[2][6] = 7; 
sbox[2][7] = 13; 
sbox[2][8] = 15; 
sbox[2][9] = 1; 
sbox[2][10] = 3; 
sbox[2][11] = 14; 
sbox[2][12] = 5; 
sbox[2][13] = 2; 
sbox[2][14] = 8; 
sbox[2][15] = 4; 
sbox[3][0] = 3; 
sbox[3][1] = 15; 
sbox[3][2] = 0; 
sbox[3][3] = 6; 
sbox[3][4] = 10; 
sbox[3][5] = 1; 
sbox[3][6] = 13; 
sbox[3][7] = 8; 
sbox[3][8] = 9; 
sbox[3][9] = 4; 
sbox[3][10] = 5; 
sbox[3][11] = 11; 
sbox[3][12] = 12; 
sbox[3][13] = 7; 
sbox[3][14] = 2; 
sbox[3][15] = 14;

assign row = {sin4[5],sin4[0]};
assign col = sin4[4:1];

end
assign sout4 = sbox[row][col];
endmodule


