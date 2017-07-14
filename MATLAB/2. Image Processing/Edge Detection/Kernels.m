clear all;close all;clc;

I = imread('rice.png');
In = imnoise(I,'salt & pepper');
subplot(121);imshow(I);
title('Original Image');
subplot(122);imshow(In)
title('Noisy Image');

kernal_averaging = (1/25)*ones(5);
kernal_prewitt = [2 2 2 2 2; 1 1 1 1 1; 0 0 0 0 0; -1 -1 -1 -1 -1; -2 -2 -2 -2 -2];
kernal_sobel = [1 2 0 -2 -1 ; 4 8 0 -8 -4 ; 6 12 0 -12 -6; 4 8 0 -8 -4; 1 2 0 -2 -1];
kernal_laplacian = [0 0 -1 0 0; 0 -1 -2 -1 0; -1 -2 16 -2 -1; 0 -1 -2 -1 0; 0 0 -1 0 0];
figure;
subplot(2,2,1);
I_avg = convolution(double(I),kernal_averaging);
imshow(uint8(I_avg));title('Average Filter');

subplot(2,2,2);
I_prewitt = convolution(double(I),kernal_prewitt);
imshow(uint8(I_prewitt));title('Prewitt Operator');

subplot(2,2,3);
I_sobel = convolution(double(I),kernal_sobel);
imshow(uint8(I_sobel));title('Sobel Operator');

subplot(2,2,4);
I_laplacian = convolution(double(I),kernal_laplacian);
imshow(uint8(I_laplacian));title('Laplacian Operator');

