% First read the target image into workspace
clear;
close all;
clc;

%Read the target image
img1 = imread('Img1.jpg');
img2 = imread('Img2.jpg');
img3 = imread('Img3.jpg');
img4 = imread('Img4.jpg');
img5 = imread('Img5.jpg');
img6 = imread('Img6.jpg');
img7 = imread('Img7.jpg');
img8 = imread('Img8.jpg');
img9 = imread('Img9.jpg');
img10 = imread('Img10.jpg');

%Convert into grayscale image
img_gray1 = rgb2gray(img1);
img_gray2 = rgb2gray(img2);
img_gray3 = rgb2gray(img3);
img_gray4 = rgb2gray(img4);
img_gray5 = rgb2gray(img5);
img_gray6 = rgb2gray(img6);
img_gray7 = rgb2gray(img7);
img_gray8 = rgb2gray(img8);
img_gray9 = rgb2gray(img9);
img_gray10 = rgb2gray(img10);

%Convert to a Binary Version of Image
img1_BW = im2bw(img_gray1,0.5);
img2_BW = im2bw(img_gray2,0.5);
img3_BW = im2bw(img_gray3,0.5);
img4_BW = im2bw(img_gray4,0.5);
img5_BW = im2bw(img_gray5,0.5);
img6_BW = im2bw(img_gray6,0.5);
img7_BW = im2bw(img_gray7,0.5);
img8_BW = im2bw(img_gray8,0.5);
img9_BW = im2bw(img_gray9,0.5);
img10_BW = im2bw(img_gray10,0.5);

%Complement the image
img1_BW1 = imcomplement(img1_BW);
img2_BW1 = imcomplement(img2_BW);
img3_BW1 = imcomplement(img3_BW);
img4_BW1 = imcomplement(img4_BW);
img5_BW1 = imcomplement(img5_BW);
img6_BW1 = imcomplement(img6_BW);
img7_BW1 = imcomplement(img7_BW);
img8_BW1 = imcomplement(img8_BW);
img9_BW1 = imcomplement(img9_BW);
img10_BW1 = imcomplement(img10_BW);

%Fill the holes to make a Solid object
img1_BW2 = imfill(img1_BW1, 'holes');
img2_BW2 = imfill(img2_BW1, 'holes');
img3_BW2 = imfill(img3_BW1, 'holes');
img4_BW2 = imfill(img4_BW1, 'holes');
img5_BW2 = imfill(img5_BW1, 'holes');
img6_BW2 = imfill(img6_BW1, 'holes');
img7_BW2 = imfill(img7_BW1, 'holes');
img8_BW2 = imfill(img8_BW1, 'holes');
img9_BW2 = imfill(img9_BW1, 'holes');
img10_BW2 = imfill(img10_BW1, 'holes');

%Filter the Image
img1_BW3 = bwareaopen(img1_BW2,10);
img2_BW3 = bwareaopen(img2_BW2,10);
img3_BW3 = bwareaopen(img3_BW2,10);
img4_BW3 = bwareaopen(img4_BW2,10);
img5_BW3 = bwareaopen(img5_BW2,10);
img6_BW3 = bwareaopen(img6_BW2,10);
img7_BW3 = bwareaopen(img7_BW2,10);
img8_BW3 = bwareaopen(img8_BW2,10);
img9_BW3 = bwareaopen(img9_BW2,10);
img10_BW3 = bwareaopen(img10_BW2,10);

%Now find the number of coins
img1_obj = bwconncomp(img1_BW3);
img2_obj = bwconncomp(img2_BW3);
img3_obj = bwconncomp(img3_BW3);
img4_obj = bwconncomp(img4_BW3);
img5_obj = bwconncomp(img5_BW3);
img6_obj = bwconncomp(img6_BW3);
img7_obj = bwconncomp(img7_BW3);
img8_obj = bwconncomp(img8_BW3);
img9_obj = bwconncomp(img9_BW3);
img10_obj = bwconncomp(img10_BW3);

img1_count = img1_obj.NumObjects;
img2_count = img2_obj.NumObjects;
img3_count = img3_obj.NumObjects;
img4_count = img4_obj.NumObjects;
img5_count = img5_obj.NumObjects;
img6_count = img6_obj.NumObjects;
img7_count = img7_obj.NumObjects;
img8_count = img8_obj.NumObjects;
img9_count = img9_obj.NumObjects;
img10_count = img10_obj.NumObjects;


figure 
subplot(2,5,1), imshow(img1), title(['Jumlah Objek: ' num2str(img1_count)])
subplot(2,5,2), imshow(img2), title(['Jumlah Objek: ' num2str(img2_count)])
subplot(2,5,3), imshow(img3), title(['Jumlah Objek: ' num2str(img3_count)])
subplot(2,5,4), imshow(img4), title(['Jumlah Objek: ' num2str(img4_count)])
subplot(2,5,5), imshow(img5), title(['Jumlah Objek: ' num2str(img5_count)])
subplot(2,5,6), imshow(img6), title(['Jumlah Objek: ' num2str(img6_count)])
subplot(2,5,7), imshow(img7), title(['Jumlah Objek: ' num2str(img7_count)])
subplot(2,5,8), imshow(img8), title(['Jumlah Objek: ' num2str(img8_count)])
subplot(2,5,9), imshow(img9), title(['Jumlah Objek: ' num2str(img9_count)])
subplot(2,5,10), imshow(img10), title(['Jumlah Objek: ' num2str(img10_count)])

%disp('The Total Number of Coins are: ');
%disp(img1_count);