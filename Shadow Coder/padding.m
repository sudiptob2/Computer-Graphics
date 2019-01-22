I = imread('bird.jpg');
[x,y,z] = size(I);
for i = 1:x
    for j = 1:y
        for k = 1:z
            if(i <=5||j<=5||i>=x-5||j>=y-5)
                I(i,j,k) = 255;
            end
        end
    end
end
figure,imshow(I)