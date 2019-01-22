a = imread('test_image.jfif');
result = imadd(a,100);
subplot(2,1,1),imshow(a),title('fruites')
subplot(2,1,2),imshow(result),title('bright fruit')
