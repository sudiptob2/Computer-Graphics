I = imread('test_image.jfif');
% I = imresize(I,[256 256]);
[rows columns dim] = size(I);
col1 = 1;
col2 = floor(columns/2);
col3 = col2+1;
row1 = 1;
row2 = floor(rows/2);
row3 = row2+1;

%crooping
upperLeft = imcrop(I,[col1 row1 col2 row2]);
upperRight = imcrop(I,[col3 row1 columns-col2 row2]);
lowerLeft = imcrop(I,[col1 row3 col2 row2]);
lowerRight = imcrop(I,[col3 row3 columns-col2 rows-row2]);
subplot(2,2,1),imshow(upperLeft),title('Upperleft');
subplot(2,2,2),imshow(upperRight),title('UpperRight');
subplot(2,2,3),imshow(lowerLeft),title('LowerLeft');
subplot(2,2,4),imshow(lowerRight),title('LowerRight');




