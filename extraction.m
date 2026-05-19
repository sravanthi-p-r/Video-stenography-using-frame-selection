extractedBits = [];

for f = 1:length(selectedFrames)

    frameNumber = selectedFrames(f);

    frame = frames{frameNumber};

    [rows, cols, channels] = size(frame);

    for r = 1:rows
        for c = 1:cols
            for ch = 1:channels

                extractedBits = [extractedBits bitget(frame(r,c,ch),1)];

            end
        end
    end
end
