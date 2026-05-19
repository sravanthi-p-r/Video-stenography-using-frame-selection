selectedFrames = [];
entropyValues = zeros(1, numFrames);

for i = 1:numFrames

    grayFrame = rgb2gray(frames{i});

    entropyValues(i) = entropy(grayFrame);
end

threshold = mean(entropyValues);

for i = 1:numFrames

    if entropyValues(i) > threshold
        selectedFrames = [selectedFrames i];
    end
end

fprintf('Selected Frames: %d\n', length(selectedFrames));
