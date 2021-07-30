module key_generation(key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14,key15,key16,key_64);
output[1:48] key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14,key15,key16;
input[1:64] key_64;
reg[1:56] key_56;
reg[1:28] c0,d0;
wire[1:28] c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16;
wire[1:28] d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16;
wire [1:56] K1,K2,K3,K4,K5,K6,K7,K8,K9,K10,K11,K12,K13,K14,K15,K16;

initial
begin
assign key_56[1:56]={key_64[57],key_64[49],key_64[41],key_64[33],key_64[25],key_64[17],key_64[9],
		     key_64[1],key_64[58],key_64[50],key_64[42],key_64[34],key_64[26],key_64[18],
		     key_64[10],key_64[2],key_64[59],key_64[51],key_64[43],key_64[35],key_64[27],
		     key_64[19],key_64[11],key_64[3],key_64[60],key_64[52],key_64[44],key_64[36],
 		     key_64[63],key_64[55],key_64[47],key_64[39],key_64[31],key_64[23],key_64[15],
		     key_64[7],key_64[62],key_64[54],key_64[46],key_64[38],key_64[30],key_64[22],
		     key_64[14],key_64[6],key_64[61],key_64[53],key_64[45],key_64[37],key_64[29],
		     key_64[21],key_64[13],key_64[5],key_64[28],key_64[20],key_64[12],key_64[4]};
assign c0[1:28]=key_56[1:28];
assign d0[1:28]=key_56[29:56];

end

assign c1[1:28]={c0[2:28],c0[1]};
assign c2[1:28]={c1[2:28],c1[1]};
assign c3[1:28]={c2[3:28],c2[1:2]};
assign c4[1:28]={c3[3:28],c3[1:2]};
assign c5[1:28]={c4[3:28],c4[1:2]};
assign c6[1:28]={c5[3:28],c5[1:2]};
assign c7[1:28]={c6[3:28],c6[1:2]};
assign c8[1:28]={c7[3:28],c7[1:2]};
assign c9[1:28]={c8[2:28],c8[1]};
assign c10[1:28]={c9[3:28],c9[1:2]};
assign c11[1:28]={c10[3:28],c10[1:2]};
assign c12[1:28]={c11[3:28],c11[1:2]};
assign c13[1:28]={c12[3:28],c12[1:2]};
assign c14[1:28]={c13[3:28],c13[1:2]};
assign c15[1:28]={c14[3:28],c14[1:2]};
assign c16[1:28]={c15[2:28],c15[1]};


assign d1[1:28]={d0[2:28],d0[1]};
assign d2[1:28]={d1[2:28],d1[1]};
assign d3[1:28]={d2[3:28],d2[1:2]};
assign d4[1:28]={d3[3:28],d3[1:2]};
assign d5[1:28]={d4[3:28],d4[1:2]};
assign d6[1:28]={d5[3:28],d5[1:2]};
assign d7[1:28]={d6[3:28],d6[1:2]};
assign d8[1:28]={d7[3:28],d7[1:2]};
assign d9[1:28]={d8[2:28],d8[1]};
assign d10[1:28]={d9[3:28],d9[1:2]};
assign d11[1:28]={d10[3:28],d10[1:2]};
assign d12[1:28]={d11[3:28],d11[1:2]};
assign d13[1:28]={d12[3:28],d12[1:2]};
assign d14[1:28]={d13[3:28],d13[1:2]};
assign d15[1:28]={d14[3:28],d14[1:2]};
assign d16[1:28]={d15[2:28],d15[1]};



assign K1[1:56]={c1[1:28],d1[1:28]};
assign K2[1:56]={c2[1:28],d2[1:28]};
assign K3[1:56]={c3[1:28],d3[1:28]};
assign K4[1:56]={c4[1:28],d4[1:28]};
assign K5[1:56]={c5[1:28],d5[1:28]};
assign K6[1:56]={c6[1:28],d6[1:28]};
assign K7[1:56]={c7[1:28],d7[1:28]};
assign K8[1:56]={c8[1:28],d8[1:28]};
assign K9[1:56]={c9[1:28],d9[1:28]};
assign K10[1:56]={c10[1:28],d10[1:28]};
assign K11[1:56]={c11[1:28],d11[1:28]};
assign K12[1:56]={c12[1:28],d12[1:28]};
assign K13[1:56]={c13[1:28],d13[1:28]};
assign K14[1:56]={c14[1:28],d14[1:28]};
assign K15[1:56]={c15[1:28],d15[1:28]};
assign K16[1:56]={c16[1:28],d16[1:28]};




key_56_to_48 k1(key1,K1);
key_56_to_48 k2(key2,K2);
key_56_to_48 k3(key3,K3);
key_56_to_48 k4(key4,K4);
key_56_to_48 k5(key5,K5);
key_56_to_48 k6(key6,K6);
key_56_to_48 k7(key7,K7);
key_56_to_48 k8(key8,K8);
key_56_to_48 k9(key9,K9);
key_56_to_48 k10(key10,K10);
key_56_to_48 k11(key11,K11);
key_56_to_48 k12(key12,K12);
key_56_to_48 k13(key13,K13);
key_56_to_48 k14(key14,K14);
key_56_to_48 k15(key15,K15);
key_56_to_48 k16(key16,K16);

endmodule










