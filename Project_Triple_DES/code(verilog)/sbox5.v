
module sbox5(sout5,sin5);
output [3:0]sout5;
input [5:0]sin5;
reg [1:0]row;
reg [3:0]col;
reg [3:0] sbox[3:0][15:0];
initial
begin
sbox[0][0] = 2;
sbox[0][1] = 12; 
sbox[0][2] = 4; 
sbox[0][3] = 1; 
sbox[0][4] = 7; 
sbox[0][5] = 10; 
sbox[0][6] = 11; 
sbox[0][7] = 6; 
sbox[0][8] = 8; 
sbox[0][9] = 5; 
sbox[0][10] = 3; 
sbox[0][11] = 15; 
sbox[0][12] = 13; 
sbox[0][13] = 0; 
sbox[0][14] = 14; 
sbox[0][15] = 9; 
sbox[1][0] = 14;
sbox[1][1] = 11; 
sbox[1][2] = 2; 
sbox[1][3] = 12; 
sbox[1][4] = 4; 
sbox[1][5] = 7; 
sbox[1][6] = 13; 
sbox[1][7] = 1; 
sbox[1][8] = 5; 
sbox[1][9] = 0; 
sbox[1][10] = 15; 
sbox[1][11] = 10; 
sbox[1][12] = 3; 
sbox[1][13] = 9; 
sbox[1][14] = 8; 
sbox[1][15] = 6;
sbox[2][0] = 4; 
sbox[2][1] = 2; 
sbox[2][2] = 1; 
sbox[2][3] = 11; 
sbox[2][4] = 10; 
sbox[2][5] = 13; 
sbox[2][6] = 7; 
sbox[2][7] = 8; 
sbox[2][8] = 15; 
sbox[2][9] = 9; 
sbox[2][10] = 12; 
sbox[2][11] = 5; 
sbox[2][12] = 6; 
sbox[2][13] = 3; 
sbox[2][14] = 0; 
sbox[2][15] = 14; 
sbox[3][0] = 11; 
sbox[3][1] = 8; 
sbox[3][2] = 12; 
sbox[3][3] = 7; 
sbox[3][4] = 1; 
sbox[3][5] = 14; 
sbox[3][6] = 2; 
sbox[3][7] = 13; 
sbox[3][8] = 6; 
sbox[3][9] = 15; 
sbox[3][10] = 0; 
sbox[3][11] = 9; 
sbox[3][12] = 10; 
sbox[3][13] = 4; 
sbox[3][14] = 5; 
sbox[3][15] = 3;

assign row = {sin5[5],sin5[0]};
assign col = sin5[4:1];

end
assign sout5 = sbox[row][col];
endmodule


