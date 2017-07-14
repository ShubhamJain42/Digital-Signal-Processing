clear all; close all; clc;
image = double(imread('rice.png'));
[m,n] = size(image);
a=0; b=0;
Image_decimated = zeros();
for i=1:2:m
    a=a+1;
    b=0;
    for j=1:2:n
        b = b+1;
        Image_decimated(a,b)=image(i,j);
    end
end
subplot(122);
imshow(uint8(Image_decimated));title('Decimated Image');
subplot(121);
imshow(uint8(image));title('Original Image');

%%
%Transpose an image
clear all; close all; clc;
image = double(imread('rice.png'));
[m,n] = size(image);
for i=1:m
    for j=1:n
        Image_transposed(i,j) = image(j,i);
    end
end
subplot(122);
imshow(uint8(Image_transposed));title('Transposed Image');
subplot(121);
imshow(uint8(image));title('Original Image');
%%
%Fliping about Vertical and Horizontal axis
clear all; close all; clc;
image = double(imread('rice.png'));
[m,n] = size(image);
if(rem(n,2)==0)
    for i=1:n
        Flipped_imageV(:,i) = image(:,abs(n-i+1));
        Flipped_imageH(i,:) = image(abs(m-i+1),:);
    end
else
    for i=1:n
        if(i==(n+1)/2)
            Flipped_imageV(:,i) = image(:,i);
            Flipped_imageH(i,:) = image(i,:);
        else
            Flipped_imageV(:,i) = image(:,abs(n-i+1));
            Flipped_imageH(i,:) = image(abs(m-i+1),:);
        end
    end
end
subplot(131);imshow(uint8(image));title('Original Image');
subplot(132);imshow(uint8(Flipped_imageV));title('Vertically Flipped Image');
subplot(133);imshow(uint8(Flipped_imageH));title('Horizontally Flipped Image');
