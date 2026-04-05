clc;
clear;
close;

// Đọc ảnh
img = imread('image.jpg');

// Chuyển sang ảnh xám
gray = rgb2gray(img);

// Tính histogram
data = matrix(gray, 1, -1);
counts = zeros(1, 256);

for i = 1:length(data)
    val = int(min(max(data(i), 0), 255));
    counts(val + 1) = counts(val + 1) + 1;
end

// Làm mờ ảnh
h = ones(5,5) / 25;
blur = conv2(double(gray), h, 'same');
blur = uint8(blur);

// Hiển thị trên 1 cửa sổ
figure();

subplot(1,3,1);
imshow(gray);
title("Grayscale Image");

subplot(1,3,2);
bar(0:255, counts);
title("Histogram");
xlabel("Gray Level");
ylabel("Frequency");

subplot(1,3,3);
imshow(blur);
title("Blurred Image");
