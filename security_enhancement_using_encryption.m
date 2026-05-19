key = 13;

encryptedData = bitxor(uint8(secretMessage), key);

binaryStream = reshape(dec2bin(encryptedData,8).'-'0',1,[]);
