%% Inputting the Image from the folder

data = imread('fil1.jpg');
InputImage = rgb2gray(data);
figure;
imshow(data);

%% Image processing to prepare the image to be converted to binary format

diff_im = imabsdiff(data(:,:,1),InputImage);

figure(3);
imshow(diff_im);


diff_im = medfilt2(diff_im,[3 3]);
figure(4)
imshow(diff_im);

%% Image converted to Binary Format with an intensity level of 0.2

diff_im = im2bw(diff_im,0.2); %Level
diff_im = bwareaopen(diff_im,350);

%figure(2);
%imshow(diff_im);
%% Finding the connected dots

bw = bwlabel(diff_im, 8);
figure;
imshow(bw);
%% Doing Manipulation to find the centroid

stats = regionprops(bw,'Centroid');
disp(stats);
centroids = cat(1,stats.Centroid);

x_axis = sum(centroids(:,1))/length(centroids);
y_axis = sum(centroids(:,2))/length(centroids);

figure;
imshow(bw)
hold on
plot(x_axis,y_axis,'b*')
hold off

display(x_axis);
display(y_axis);



for object = 1:length(stats)
    
    %bb = stats(object).BoundingBox;
    %bc = stats(object).Centroid;
    %rectangle('Position',bb,'EdgeColor','r','LineWidth',2);
    %figure;
    %plot(bc(1),bc(2),'-m+')
    %a = text(bc(1) + 15, bc(2), strcat('X: ', num2str(round(bc(1))),' Y: ',num2str(round(bc(2)))));
    %set(a,'FontName','Arial','FontWeight','bold','FontSize',12,'Color','black');
end