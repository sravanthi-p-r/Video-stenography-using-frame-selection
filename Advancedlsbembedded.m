bitIndex = 1;

for f = 1:length(selectedFrames)

    frameNumber = selectedFrames(f);

    frame = frames{frameNumber};

    [rows, cols, channels] = size(frame);

    for r = 1:rows
        for c = 1:cols
            for ch = 1:channels

                if bitIndex <= length(binaryStream)

                    pixel = frame(r,c,ch);

                    pixel = bitset(pixel,1,binaryStream(bitIndex));

                    frame(r,c,ch) = pixel;

                    bitIndex = bitIndex + 1;
                end

            end
        end
    end

    frames{frameNumber} = frame;

    if bitIndex > length(binaryStream)
        break;
    end
end

fprintf('Embedding Completed\n');
