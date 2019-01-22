img1 = imread('test_image.jfif');
img1 = imresize(img1,[256 256]);
img2 = imread('bird.jpg');
img2 = imresize(img2,[256 256]);

[x1 y1 z1] = size(img1);
[x2 y2 z2] = size(img2);
img3 = zeros(x1,y1,'uint8');

for i =1:x1
    for j = 1:y1
        for k = 1:z1
            img3(i,j,k) = img1(i,j,k)- img2(i,j,k);
        end
    end
end
subplot(2,2,1),imshow(img1),title('Original Image 1')
subplot(2,2,2),imshow(img2),title('Original Image 2')
subplot(2,2,3),imshow(img3),title('Image after subtraction')





