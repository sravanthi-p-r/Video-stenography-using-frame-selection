frame = frames{selectedFrames(1)};

grayFrame = rgb2gray(frame);

edges = edge(grayFrame,'Canny');

bitIndex = 1;

for r = 1:size(frame,1)

    for c = 1:size(frame,2)

        if edges(r,c) == 1

            for ch = 1:3

                if bitIndex <= length(binaryStream)

                    pixel = frame(r,c,ch);

                    pixel = bitset(pixel,1,binaryStream(bitIndex));

                    frame(r,c,ch) = pixel;

                    bitIndex = bitIndex + 1;
                end
            end
        end
    end
end

frames{selectedFrames(1)} = fra
