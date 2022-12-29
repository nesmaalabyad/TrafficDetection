function buttonPlot
 
% Create a figure window
fig = uifigure;


%Create a UI axes
%axes
ax = uiaxes('Parent',fig,...
            'Units','pixels',...
            'Position', [100, 123, 100, 201]);
I= imread('D:\t1.jpg');
image(I,  "Parent", ax);
ax.Visible='off';

%Create a UI axes
%axes
ax1 = uiaxes('Parent',fig,...
            'Units','pixels',...
            'Position', [250, 123, 100, 201]);
I= imread('D:\t2.jpg');
image(I,  "Parent", ax1);
ax1.Visible='off';

%Create a UI axes
%axes
ax2 = uiaxes('Parent',fig,...
            'Units','pixels',...
            'Position', [400, 123, 100, 201]);
I= imread('D:\t3.jpg');
image(I,  "Parent", ax2);
ax2.Visible='off';



           
% Create a push button for yellow
btn = uibutton(fig,'push',...
               'Text', 'Detect 1',...
               'Position',[100, 90, 100, 22],...
               'ButtonPushedFcn', @(btn,event) detect(btn,ax));
           
% Create a push button for yellow
btn1 = uibutton(fig,'push',...
               'Text', 'Detect 2',...
               'Position',[250, 90, 100, 22],...
               'ButtonPushedFcn', @(btn1,event) detect1(btn1,ax1));
           
% Create a push button for yellow
btn2 = uibutton(fig,'push',...
               'Text', 'Detect 3',...
               'Position',[400, 90, 100, 22],...
               'ButtonPushedFcn', @(btn2,event) detect2(btn2,ax2));           
           
           

end

function detect(btn,ax)
I = imread('D:\t1.jpg');
%I = imread('D:\t2.jpg');
%I = imread('D:\t3.jpg');

%RGB Pixel ranges
%RED R=42.2 G=15.9 B=9
%YELLOW R=40.8 G=28.3 B=9.6
%GREEN R=29.7 G=37.5 B=14.9

%RGB Pixel ranges
%RED R=87.8 G=84 B=78
%YELLOW R=89.3 G=90 B=77.6
%GREEN R=78.5 G=94 B=79.9

RedColor= I(:,:,1);
Threshold = 50;
noOfPixels = numel(RedColor);
pixelIndex = find(RedColor > Threshold);
redAveragePixels=length(pixelIndex) / noOfPixels * 100;

GreenColor= I(:,:,2);
Threshold = 50;
noOfPixels = numel(GreenColor);
pixelIndex = find(GreenColor > Threshold);
greenAveragePixels=length(pixelIndex) / noOfPixels * 100;

BlueColor= I(:,:,3);
Threshold = 50;
noOfPixels = numel(BlueColor);
pixelIndex = find(BlueColor > Threshold);
blueAveragePixels=length(pixelIndex) / noOfPixels * 100;

%RED R=87.8 G=84 B=78
%YELLOW R=89.3 G=90 B=77.6
%GREEN R=78.5 G=94 B=79.9
 

if(redAveragePixels>greenAveragePixels && redAveragePixels>blueAveragePixels )   
   RplotButtonPushed
elseif(greenAveragePixels>redAveragePixels && greenAveragePixels>blueAveragePixels && greenAveragePixels<91) 
   YplotButtonPushed
elseif(greenAveragePixels>redAveragePixels && greenAveragePixels>blueAveragePixels && greenAveragePixels>91)
   GplotButtonPushed
end
end
function detect1(btn1,ax1)
%I = imread('D:\t1.jpg');
I = imread('D:\t2.jpg');
%I = imread('D:\t3.jpg');

%RGB Pixel ranges
%RED R=42.2 G=15.9 B=9
%YELLOW R=40.8 G=28.3 B=9.6
%GREEN R=29.7 G=37.5 B=14.9

%RGB Pixel ranges
%RED R=87.8 G=84 B=78
%YELLOW R=89.3 G=90 B=77.6
%GREEN R=78.5 G=94 B=79.9

RedColor= I(:,:,1);
Threshold = 50;
noOfPixels = numel(RedColor);
pixelIndex = find(RedColor > Threshold);
redAveragePixels=length(pixelIndex) / noOfPixels * 100;

GreenColor= I(:,:,2);
Threshold = 50;
noOfPixels = numel(GreenColor);
pixelIndex = find(GreenColor > Threshold);
greenAveragePixels=length(pixelIndex) / noOfPixels * 100;

BlueColor= I(:,:,3);
Threshold = 50;
noOfPixels = numel(BlueColor);
pixelIndex = find(BlueColor > Threshold);
blueAveragePixels=length(pixelIndex) / noOfPixels * 100;

%RED R=87.8 G=84 B=78
%YELLOW R=89.3 G=90 B=77.6
%GREEN R=78.5 G=94 B=79.9
 

if(redAveragePixels>greenAveragePixels && redAveragePixels>blueAveragePixels )   
  RplotButtonPushed
elseif(greenAveragePixels>redAveragePixels && greenAveragePixels>blueAveragePixels && greenAveragePixels<91) 
   YplotButtonPushed
elseif(greenAveragePixels>redAveragePixels && greenAveragePixels>blueAveragePixels && greenAveragePixels>91)
   GplotButtonPushed
end
end
function detect2(btn2,ax2)
%I = imread('D:\t1.jpg');
%I = imread('D:\t2.jpg');
I = imread('D:\t3.jpg');

%RGB Pixel ranges
%RED R=42.2 G=15.9 B=9
%YELLOW R=40.8 G=28.3 B=9.6
%GREEN R=29.7 G=37.5 B=14.9

%RGB Pixel ranges
%RED R=87.8 G=84 B=78
%YELLOW R=89.3 G=90 B=77.6
%GREEN R=78.5 G=94 B=79.9

RedColor= I(:,:,1);
Threshold = 50;
noOfPixels = numel(RedColor);
pixelIndex = find(RedColor > Threshold);
redAveragePixels=length(pixelIndex) / noOfPixels * 100;

GreenColor= I(:,:,2);
Threshold = 50;
noOfPixels = numel(GreenColor);
pixelIndex = find(GreenColor > Threshold);
greenAveragePixels=length(pixelIndex) / noOfPixels * 100;

BlueColor= I(:,:,3);
Threshold = 50;
noOfPixels = numel(BlueColor);
pixelIndex = find(BlueColor > Threshold);
blueAveragePixels=length(pixelIndex) / noOfPixels * 100;

%RED R=87.8 G=84 B=78
%YELLOW R=89.3 G=90 B=77.6
%GREEN R=78.5 G=94 B=79.9
 

if(redAveragePixels>greenAveragePixels && redAveragePixels>blueAveragePixels )   
  RplotButtonPushed
elseif(greenAveragePixels>redAveragePixels && greenAveragePixels>blueAveragePixels && greenAveragePixels<91) 
   YplotButtonPushed
elseif(greenAveragePixels>redAveragePixels && greenAveragePixels>blueAveragePixels && greenAveragePixels>91)
   GplotButtonPushed
end
end
% Create the function for the ButtonPushedFcn callback
function RplotButtonPushed
 image = imread('D:\TrafficLightIMG.jpg');
imshow(image)

reddetect = imread('D:\TrafficLightIMG.jpg');
[X, Y, Z]=size(reddetect)
%---- Detect Red Color
for x = 1:X
    for y = 1:Y
                if(reddetect(x,y,1) < 160 || reddetect(x,y,2) > 110 || reddetect(x,y,3) > 100)
               reddetect(x,y,:) = [0,0,0]; 
             
                end
         
    end
end

subplot(3,2,3)
imshow(image)
title('Original Image'); 

subplot(3,2,4)
imshow(reddetect)
title('Red Detected Image'); 
end

function YplotButtonPushed
 image = imread('D:\TrafficLightIMG.jpg');
 yellowdetect = imread('D:\TrafficLightIMG.jpg');
%---- Detect Yallow Color
for x = 1: size(image,1)
    for y = 1: size(image,2)
        if(image(x,y,1) < 152 || image(x,y,2) < 120 || image(x,y,3) > 100)
            image(x,y,:) = [0,0,0];
        end
    end
end
figure;
subplot(3,2,3)
imshow(yellowdetect)
title('Original Image'); 

subplot(3,2,4)
imshow(image)
title('Yellow Detected Image');

end

function GplotButtonPushed
greendetect = imread('D:\TrafficLightIMG.jpg');

image = imread('D:\TrafficLightIMG.jpg');
%---- Detect Green Color
for x = 1: size(image,1)
    for y = 1: size(image,2)
        if(image(x,y,2) < 130 || image(x,y,1) > 100 || image(x,y,3) > 100)
           image(x,y,:) = [0,0,0];
        end
    end
end
figure;
subplot(3,2,3)
imshow(greendetect)
title('Original Image'); 

subplot(3,2,4)
imshow(image)
title('Green Detected Image');
impixelinfo
end
