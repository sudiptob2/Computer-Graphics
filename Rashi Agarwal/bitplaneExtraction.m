c = imread('cameraman.bmp');
%to do calculation we have to convert into double
cd = double(c);
%bit plane extraction
c0 = mod(cd,2);
c1 = mod(floor(cd/2),2);
c2 = mod(floor(cd/4),2);
c3 = mod(floor(cd/8),2);
c4 = mod(floor(cd/16),2);
c5 = mod(floor(cd/32),2);
c6 = mod(floor(cd/64),2);
c7 = mod(floor(cd/128),2);
%showing in the figure
subplot(2,4,1),imshow(c0),title('Bit 0');
subplot(2,4,2),imshow(c1),title('Bit 1');
subplot(2,4,3),imshow(c2),title('Bit 2');
subplot(2,4,4),imshow(c3),title('Bit 3');
subplot(2,4,5),imshow(c4),title('Bit 4');
subplot(2,4,6),imshow(c5),title('Bit 5');
subplot(2,4,7),imshow(c6),title('Bit 6');
subplot(2,4,8),imshow(c7),title('Bit 7');





