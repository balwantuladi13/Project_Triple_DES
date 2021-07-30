module des3_decrypt(plain_text,cipher_text,K1,K2);
output [1:64]plain_text;
input [1:64]cipher_text,K1,K2;
wire [1:64]cip_text1;
wire [1:64]cip_text2;
wire [1:48]key1_1,key1_2,key1_3,key1_4,key1_5,key1_6,key1_7,key1_8,key1_9,key1_10,key1_11,key1_12,key1_13,key1_14,key1_15,key1_16;
wire [1:48]key2_1,key2_2,key2_3,key2_4,key2_5,key2_6,key2_7,key2_8,key2_9,key2_10,key2_11,key2_12,key2_13,key2_14,key2_15,key2_16;

key_generation key_gen1(key1_1,key1_2,key1_3,key1_4,key1_5,key1_6,key1_7,key1_8,key1_9,key1_10,key1_11,key1_12,key1_13,key1_14,key1_15,key1_16,K1);
key_generation key_gen2(key2_1,key2_2,key2_3,key2_4,key2_5,key2_6,key2_7,key2_8,key2_9,key2_10,key2_11,key2_12,key2_13,key2_14,key2_15,key2_16,K2);

decrypt decrypt1(cip_text1,cipher_text,key1_1,key1_2,key1_3,key1_4,key1_5,key1_6,key1_7,key1_8,key1_9,key1_10,key1_11,key1_12,key1_13,key1_14,key1_15,key1_16);
encrypt encrypt1(cip_text2,cip_text1,key2_1,key2_2,key2_3,key2_4,key2_5,key2_6,key2_7,key2_8,key2_9,key2_10,key2_11,key2_12,key2_13,key2_14,key2_15,key2_16);
decrypt decrypt2(plain_text,cip_text2,key1_1,key1_2,key1_3,key1_4,key1_5,key1_6,key1_7,key1_8,key1_9,key1_10,key1_11,key1_12,key1_13,key1_14,key1_15,key1_16);
endmodule