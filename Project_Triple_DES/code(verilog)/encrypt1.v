module encrypt(cip_text1,plain_text,Key1,Key2,Key3,Key4,Key5,Key6,Key7,Key8,Key9,Key10,Key11,Key12,Key13,Key14,Key15,Key16);
output [1:64]cip_text1;
input [1:64]plain_text;
input [1:48]Key1,Key2,Key3,Key4,Key5,Key6,Key7,Key8,Key9,Key10,Key11,Key12,Key13,Key14,Key15,Key16;
wire [1:64]ip_out;
wire [1:32]L[0:16];
wire [1:32]R[0:16];
wire [1:64]RL;


assign ip_out[1:64]=   {plain_text[58],plain_text[50],plain_text[42],plain_text[34],plain_text[26],plain_text[18],plain_text[10],plain_text[2],
			plain_text[60],plain_text[52],plain_text[44],plain_text[36],plain_text[28],plain_text[20],plain_text[12],plain_text[4],
			plain_text[62],plain_text[54],plain_text[46],plain_text[38],plain_text[30],plain_text[22],plain_text[14],plain_text[6],
			plain_text[64],plain_text[56],plain_text[48],plain_text[40],plain_text[32],plain_text[24],plain_text[16],plain_text[8],
			plain_text[57],plain_text[49],plain_text[41],plain_text[33],plain_text[25],plain_text[17],plain_text[9],plain_text[1],
			plain_text[59],plain_text[51],plain_text[43],plain_text[35],plain_text[27],plain_text[19],plain_text[11],plain_text[3],
			plain_text[61],plain_text[53],plain_text[45],plain_text[37],plain_text[29],plain_text[21],plain_text[13],plain_text[5],
			plain_text[63],plain_text[55],plain_text[47],plain_text[39],plain_text[31],plain_text[23],plain_text[15],plain_text[7]};
			

assign L[0][1:32]=ip_out[1:32];
assign R[0][1:32]=ip_out[33:64];

round round1(L[1],R[1],L[0],R[0],Key1);
round round2(L[2],R[2],L[1],R[1],Key2);
round round3(L[3],R[3],L[2],R[2],Key3);
round round4(L[4],R[4],L[3],R[3],Key4);
round round5(L[5],R[5],L[4],R[4],Key5);
round round6(L[6],R[6],L[5],R[5],Key6);
round round7(L[7],R[7],L[6],R[6],Key7);
round round8(L[8],R[8],L[7],R[7],Key8);
round round9(L[9],R[9],L[8],R[8],Key9);
round round10(L[10],R[10],L[9],R[9],Key10);
round round11(L[11],R[11],L[10],R[10],Key11);
round round12(L[12],R[12],L[11],R[11],Key12);
round round13(L[13],R[13],L[12],R[12],Key13);
round round14(L[14],R[14],L[13],R[13],Key14);
round round15(L[15],R[15],L[14],R[14],Key15);
round round16(L[16],R[16],L[15],R[15],Key16);

assign RL[1:64] = {R[16][1:32],L[16][1:32]};


assign cip_text1[1:64]= {RL[40],RL[8],RL[48],RL[16],RL[56],RL[24],RL[64],RL[32],
			RL[39],RL[7],RL[47],RL[15],RL[55],RL[23],RL[63],RL[31],
			RL[38],RL[6],RL[46],RL[14],RL[54],RL[22],RL[62],RL[30],
			RL[37],RL[5],RL[45],RL[13],RL[53],RL[21],RL[61],RL[29],
			RL[36],RL[4],RL[44],RL[12],RL[52],RL[20],RL[60],RL[28],
			RL[35],RL[3],RL[43],RL[11],RL[51],RL[19],RL[59],RL[27],
			RL[34],RL[2],RL[42],RL[10],RL[50],RL[18],RL[58],RL[26],
			RL[33],RL[1],RL[41],RL[9],RL[49],RL[17],RL[57],RL[25]};


endmodule









