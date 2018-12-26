RGB = imread('food.jpg');
I = rgb2gray(RGB);

%erosion
%square structuring element with a width of 3 pixels.
se1 = strel('square',3);
erodedI = imerode(I,se1);

%dilation
se2 = strel('square',3);
dilatedI = imdilate(I,se2);

%opening
%disk-shaped structuring element with a radius of 3 pixels.
se3 = strel('disk',3);
Opening = imopen(I,se3);

%closing
se4 = strel('disk',3);
Closing = imclose(I,se4);

%Show picture
subplot(2,2,1)
imshow(erodedI)
title('Erosion')
subplot(2,2,2)
imshow(dilatedI)
title('Dilation')
subplot(2,2,3)
imshow(Opening)
title('Opening')
subplot(2,2,4)
imshow(Closing)
title('Closing')

figure
imshow(I)
title('Original image')
