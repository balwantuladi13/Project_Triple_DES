
module key_56_to_48(key_48_out,key_56);
input[1:56] key_56;
output[1:48] key_48_out;
wire[1:48] key_48;

assign key_48[1:48]={key_56[14],key_56[17],key_56[11],key_56[24],key_56[1],key_56[5],
			key_56[3],key_56[28],key_56[15],key_56[6],key_56[21],key_56[10],
			key_56[23],key_56[19],key_56[12],key_56[4],key_56[26],key_56[8],
			key_56[16],key_56[7],key_56[27],key_56[20],key_56[13],key_56[2],
			key_56[41],key_56[52],key_56[31],key_56[37],key_56[47],key_56[55],
			key_56[30],key_56[40],key_56[51],key_56[45],key_56[33],key_56[48],
			key_56[44],key_56[49],key_56[39],key_56[56],key_56[34],key_56[53],
			key_56[46],key_56[42],key_56[50],key_56[36],key_56[29],key_56[32]};

assign key_48_out[1:48]=key_48[1:48];

endmodule

