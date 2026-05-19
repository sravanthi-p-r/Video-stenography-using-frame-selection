outputVideo = VideoWriter('stego_video.avi');
open(outputVideo);

for i = 1:numFrames

    writeVideo(outputVideo, frames{i});
end

close(outputVideo);

fprintf('Stego Video Generated Successfully\n');
