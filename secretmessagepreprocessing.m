secretMessage = 'Confidential Data';

asciiValues = uint8(secretMessage);

binaryStream = reshape(dec2bin(asciiValues,8).'-'0',1,[]);

fprintf('Total Bits: %d\n', length(binaryStream));
