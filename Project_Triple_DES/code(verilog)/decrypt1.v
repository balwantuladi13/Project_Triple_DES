module decrypt(cip_text2,cip_text1,key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14,key15,key16);
output[1:64]cip_text2;
input[1:64]cip_text1;
input[1:48]key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14,key15,key16;
wire[1:32]L[16:0];
wire[1:32]R[16:0];
wire[1:64]ip_out1;
wire[1:64]LR;

assign ip_out1[1:64]={cip_text1[58],cip_text1[50],cip_text1[42],cip_text1[34],cip_text1[26],cip_text1[18],cip_text1[10],cip_text1[2],
                      cip_text1[60],cip_text1[52],cip_text1[44],cip_text1[36],cip_text1[28],cip_text1[20],cip_text1[12],cip_text1[4],
                      cip_text1[62],cip_text1[54],cip_text1[46],cip_text1[38],cip_text1[30],cip_text1[22],cip_text1[14],cip_text1[6],
                      cip_text1[64],cip_text1[56],cip_text1[48],cip_text1[40],cip_text1[32],cip_text1[24],cip_text1[16],cip_text1[8],
                      cip_text1[57],cip_text1[49],cip_text1[41],cip_text1[33],cip_text1[25],cip_text1[17],cip_text1[9],cip_text1[1], 
                      cip_text1[59],cip_text1[51],cip_text1[43],cip_text1[35],cip_text1[27],cip_text1[19],cip_text1[11],cip_text1[3],
                      cip_text1[61],cip_text1[53],cip_text1[45],cip_text1[37],cip_text1[29],cip_text1[21],cip_text1[13],cip_text1[5],
                      cip_text1[63],cip_text1[55],cip_text1[47],cip_text1[39],cip_text1[31],cip_text1[23],cip_text1[15],cip_text1[7]};

assign R[16][1:32]=ip_out1[1:32];
assign L[16][1:32]=ip_out1[33:64];

round round1(R[15],L[15],R[16],L[16],key16);
round round2(R[14],L[14],R[15],L[15],key15);
round round3(R[13],L[13],R[14],L[14],key14);
round round4(R[12],L[12],R[13],L[13],key13);
round round5(R[11],L[11],R[12],L[12],key12);
round round6(R[10],L[10],R[11],L[11],key11);
round round7(R[9],L[9],R[10],L[10],key10);
round round8(R[8],L[8],R[9],L[9],key9);
round round9(R[7],L[7],R[8],L[8],key8);
round round10(R[6],L[6],R[7],L[7],key7);
round round11(R[5],L[5],R[6],L[6],key6);
round round12(R[4],L[4],R[5],L[5],key5);
round round13(R[3],L[3],R[4],L[4],key4);
round round14(R[2],L[2],R[3],L[3],key3);
round round15(R[1],L[1],R[2],L[2],key2);
round round16(R[0],L[0],R[1],L[1],key1);

assign LR[1:64]={L[0][1:32],R[0][1:32]};

assign cip_text2[1:64]={LR[40],LR[8],LR[48],LR[16],LR[56],LR[24],LR[64],LR[32],
                       LR[39],LR[7],LR[47],LR[15],LR[55],LR[23],LR[63],LR[31],
                       LR[38],LR[6],LR[46],LR[14],LR[54],LR[22],LR[62],LR[30],
                       LR[37],LR[5],LR[45],LR[13],LR[53],LR[21],LR[61],LR[29],
                       LR[36],LR[4],LR[44],LR[12],LR[52],LR[20],LR[60],LR[28],
		       LR[35],LR[3],LR[43],LR[11],LR[51],LR[19],LR[59],LR[27],
		       LR[34],LR[2],LR[42],LR[10],LR[50],LR[18],LR[58],LR[26],
                       LR[33],LR[1],LR[41],LR[9],LR[49],LR[17],LR[57],LR[25]};


endmodule

	



