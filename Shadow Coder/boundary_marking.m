I = imread('grayImage.png');
% figure,imshow(I)
[X,Y] = size(I);

for i = 1:X
    for j = 1:Y
        if(i <= 2 || j <= 2 || i >= X-2 || j >= Y-2)
            I(i,j) = 255;
        end
    end
end
figure,imshow(I)