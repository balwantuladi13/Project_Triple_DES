module round(L_out,R_out,L_in,R_in,key);
output[1:32]L_out,R_out;
input[1:32]L_in,R_in;
input[1:48]key;
wire[1:48] E_R_out;//Changing wire to reg
wire [1:48] xor_out;
wire [1:32] sbox_out;//changed to 1:32

wire [1:32] P_R_out;


assign E_R_out[1:48]={R_in[32],R_in[1],R_in[2],R_in[3],R_in[4],R_in[5],
		R_in[4],R_in[5],R_in[6],R_in[7],R_in[8],R_in[9],
		R_in[8],R_in[9],R_in[10],R_in[11],R_in[12],R_in[13],
		R_in[12],R_in[13],R_in[14],R_in[15],R_in[16],R_in[17],
		R_in[16],R_in[17],R_in[18],R_in[19],R_in[20],R_in[21],
		R_in[20],R_in[21],R_in[22],R_in[23],R_in[24],R_in[25],
		R_in[24],R_in[25],R_in[26],R_in[27],R_in[28],R_in[29],
		R_in[28],R_in[29],R_in[30],R_in[31],R_in[32],R_in[1]};
assign xor_out=E_R_out^key;

sbox1 s1(sbox_out[1:4],xor_out[1:6]);
sbox2 s2(sbox_out[5:8],xor_out[7:12]);
sbox3 s3(sbox_out[9:12],xor_out[13:18]);
sbox4 s4(sbox_out[13:16],xor_out[19:24]);
sbox5 s5(sbox_out[17:20],xor_out[25:30]);
sbox6 s6(sbox_out[21:24],xor_out[31:36]);
sbox7 s7(sbox_out[25:28],xor_out[37:42]);
sbox8 s8(sbox_out[29:32],xor_out[43:48]);
assign P_R_out[1:32]={sbox_out[16],sbox_out[7],sbox_out[20],sbox_out[21],
		sbox_out[29],sbox_out[12],sbox_out[28],sbox_out[17],
		sbox_out[1],sbox_out[15],sbox_out[23],sbox_out[26],
		sbox_out[5],sbox_out[18],sbox_out[31],sbox_out[10],
		sbox_out[2],sbox_out[8],sbox_out[24],sbox_out[14],
		sbox_out[32],sbox_out[27],sbox_out[3],sbox_out[9],
		sbox_out[19],sbox_out[13],sbox_out[30],sbox_out[6],
		sbox_out[22],sbox_out[11],sbox_out[4],sbox_out[25]};

assign R_out=P_R_out^L_in;
assign L_out=R_in;

endmodule


		
		
		