clc;
clear;
close all;

videoObj = VideoReader('input_video.mp4');

numFrames = floor(videoObj.Duration * videoObj.FrameRate);

frames = cell(1, numFrames);

index = 1;
while hasFrame(videoObj)
    frames{index} = readFrame(videoObj);
    index = index + 1;
end

fprintf('Total Frames Extracted: %d\n', numFrames);
