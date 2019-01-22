a = imread('test_image.jfif');
b = imread('bird.jpg');
size(a)
size(b)
%resizing the images to match the dimention
a = imresize(a,[256,256]);
b = imresize(b,[256,256]);
c = imadd(a,b);
%showing the images using subplot
subplot(2,2,1),imshow(a),title('fruites')
subplot(2,2,2),imshow(b),title('bird')
subplot(2,2,3),imshow(c),title('after blending')


