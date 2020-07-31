%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab 3
% Problem number:2
% Student Name:Alden Rivera
% Student ID:0416329
% Email address:aldenj.riveraf@gmail.com
% Department: Computer Science, NCTU
% Date: 2019/05/06
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

% show Lab
disp('Lab Problem 3.2');  
while 1
    c=input(' 0.Exit\n 1.Vertical Effect\n 2.Horizontal Effect grid\n Enter choice: ');
    I = imread('tmp.png');
    Id = im2double(I);
   
    s = size(Id);
    w = s(2);
    h = s(1);
    
    x=1:1:w;
    y=1:1:h;
    fx=abs(cos(x./w.*2.*pi));
    fy=abs(cos(y./h.*2.*pi));
    [x1 y1]=meshgrid(fx,fy);
    if(c==0)
        disp('Thanks for playing');
        break;
    elseif(c==1)
        imshow(Id.*x1);
    elseif(c==2)
        imshow(Id.*y1);
    end
end