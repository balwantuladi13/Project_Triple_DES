module des3_encrypt_stim;
wire [1:64]cipher_text;
reg [1:64]plain_text,K1,K2;
des3_encrypt e1(cipher_text,plain_text,K1,K2);
initial
begin
$monitor("cipher_text=%b,plain_text=%b,Key1=%b,Key2=%b",cipher_text,plain_text,K1,K2);
K1=64'b00010011_00110100_01010111_01111001_10011011_10111100_11011111_11110001;
K2=64'b11101100_11001011_10101000_10000110_01100100_01000011_00100000_00001110;
plain_text=64'b00000001_00100011_01000101_01100111_10001001_10101011_11001101_11101111;
end
endmodule