I = imread('test_image.jfif');
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

newImg = zeros(size(I,1),size(I,2),'uint8');
for x=1:size(I,1)
    for y = 1:size(I,2)
        newImg(x,y) = (R(x,y)*.33 + G(x,y)*.33 + B(x,y)*.33);
        
    end
end
%built in function
gb = rgb2gray(I);
% imwrite(gb,'grayImage.png');
subplot(1,3,1),imshow(I),title('Original Image')
subplot(1,3,2),imshow(newImg),title('Own Grayscale')
subplot(1,3,3),imshow(gb),title('Built In Grayscale')

