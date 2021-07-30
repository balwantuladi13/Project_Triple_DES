module key_gen_stim;
wire[1:48] key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14,key15,key16;
reg[1:64] key_64;

key_generation k(key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14,key15,key16,key_64);
initial
begin
$monitor("key1=%b,key2=%b,key3=%b,key4=%b,key5=%b,key6=%b,key7=%b,key8=%b,key9=%b,key10=%b,key11=%b,key12=%b,key13=%b,key14=%b,key15=%b,key16=%b",key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14,key15,key16);
key_64=64'b0001001100110100010101110111100110011011101111001101111111110001;
end
endmodule


