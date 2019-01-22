I = imread('grayImage.png');
% figure,imshow(I)
I = imresize(I,[256 256]);
[X,Y] = size(I);

for i = 1:X
    for j = 1:Y
        if(i==j||i+j==Y+1)
            I(i,j)=255;
        end
    end
end
figure,imshow(I)