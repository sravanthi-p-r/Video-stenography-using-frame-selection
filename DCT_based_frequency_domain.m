frame = rgb2gray(frames{selectedFrames(1)});

frame = double(frame);

DCT_Frame = dct2(frame);

bitIndex = 1;

for r = 1:8:size(frame,1)-7

    for c = 1:8:size(frame,2)-7

        if bitIndex <= length(binaryStream)

            block = DCT_Frame(r:r+7,c:c+7);

            coeff = block(4,4);

            coeff = bitset(int16(coeff),1,binaryStream(bitIndex));

            block(4,4) = coeff;

            DCT_Frame(r:r+7,c:c+7) = block;

            bitIndex = bitIndex + 1;
        end
    end
end

reconstructed = uint8(idct2(DCT_Frame));

imshow(reconstructed);
