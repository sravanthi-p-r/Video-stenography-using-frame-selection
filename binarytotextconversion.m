binaryMatrix = reshape(extractedBits,8,[])';

asciiValues = bi2de(binaryMatrix);

retrievedMessage = char(asciiValues)';

disp(retrievedMessage);
