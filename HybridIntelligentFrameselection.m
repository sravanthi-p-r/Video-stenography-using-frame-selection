score = zeros(1,numFrames);

for i = 2:numFrames

    prevFrame = rgb2gray(frames{i-1});
    currentFrame = rgb2gray(frames{i});

    motion = sum(abs(double(currentFrame(:)) - double(prevFrame(:))));

    ent = entropy(currentFrame);

    edgeMap = edge(currentFrame,'Canny');

    edgeDensity = sum(edgeMap(:))/numel(edgeMap);

    score(i) = 0.4*ent + 0.4*motion + 0.2*edgeDensity;
end

[~,sortedIndex] = sort(score,'descend');

selectedFrames = sortedIndex(1:10);
