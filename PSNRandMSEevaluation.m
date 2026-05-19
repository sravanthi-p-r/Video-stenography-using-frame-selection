original = rgb2gray(read(videoObj,1));
modified = rgb2gray(frames{1});

mseValue = immse(original, modified);

psnrValue = psnr(modified, original);

fprintf('MSE: %f\n', mseValue);
fprintf('PSNR: %f dB\n', psnrValue);
