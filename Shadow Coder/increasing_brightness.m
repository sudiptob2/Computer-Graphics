I = imread('test_image.jfif');
newImg = imadd(I,50);
subplot(2,2,1),imshow(I),title('Old Image');
subplot(2,2,2),imshow(newImage),title('New Image');