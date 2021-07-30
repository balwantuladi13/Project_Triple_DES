module des3_decrypt_stim;
wire [1:64]plain_text;
reg [1:64]cipher_text,K1,K2;
des3_decrypt d1(plain_text,cipher_text,K1,K2);
initial
begin
$monitor("plain_text=%b,cipher_text=%b,Key1=%b,Key2=%b",plain_text,cipher_text,K1,K2);
cipher_text=64'b0100010111010010101000001111001110110011010001111110000000001000;
K1=64'b00010011_00110100_01010111_01111001_10011011_10111100_11011111_11110001;
K2=64'b11101100_11001011_10101000_10000110_01100100_01000011_00100000_00001110;
end
endmodule
