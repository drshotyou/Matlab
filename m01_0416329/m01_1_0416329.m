%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 1
% Problem number: 1
% Student Name:  Alden Rivera
% Student ID: 0416329
% Email address: aldenj.riveraf@gmail.com
% Department:Computer Science
% Date: 2019/4/18
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;clear;clc;

disp('Midterm Problem 1.1');

while 1
   a=input('Please input a:');
   if(a==0)
        disp('Thanks for playing')
        return
   end
   dx=input('input dx:');
   if(dx==0)
    dx=0.025;
   end
   if(dx<0)
    while(dx<0)
        dx=input('Step size must be non-negative, input dx:');
    end
   end
   x=-5:dx:5;
   y=a.*cos(abs(x))+sin(6.*x.^2)-1./((x.^2)+1);
   plot(x,y,'LineWidth',3)
   hold on;
end