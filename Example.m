% Image Compressor
% Compresses to 1/3 size

old_rgb_1 = imread('image1.jpg');       % Comvert jpg to rgb
comp_rgb_1 = compress(old_rgb_1);       % Compress image
uncomp_rgb_1 = decompress(comp_rgb_1);  % Uncompress image
imwrite(comp_rgb_1,'image1new.jpg');    % Convert back to jpg

old_rgb_2 = imread('image2.jpg');
comp_rgb_2 = compress(old_rgb_2);
uncomp_rgb_2 = decompress(comp_rgb_2);
imwrite(comp_rgb_2,'image2new.jpg');

% Display the original and new images side-by-side
figure(1);
subplot(1,2,1);
image(old_rgb_1);
title('Precompressed Image');
subplot(1,2,2);
image(uncomp_rgb_1);
title('Compressed and Uncompressed Image');

figure(2);
subplot(1,2,1);
image(old_rgb_2);
title('Precompressed Image');
subplot(1,2,2);
image(uncomp_rgb_2);
title('Compressed and Uncompressed Image');