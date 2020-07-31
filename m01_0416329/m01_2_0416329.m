%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 1
% Problem number: 2
% Student Name:  Alden Rivera
% Student ID: 0416329
% Email address: aldenj.riveraf@gmail.com
% Department:Computer Science
% Date: 2019/4/18
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;clear;clc;

disp('Midterm Problem 1.2');

while 1
    b=input('Input b:');
    if(b==0)
        disp('Thanks for playing');
        break;
    end
    clf;
    
    y=-10:0.0001:10;
    
    for d=1:1:10
        a=-d.*(abs(cos(y.^2))+1);
        b1=y;
        c=b.*y.^2;
        x1=(-b1-sqrt(b1.^2 - 4.*a.*c))./(2.*a);
        x2=(-b1+sqrt(b1.^2 - 4.*a.*c))./(2.*a);
        plot(x1,y,'LineWidth',3);
        axis([-10 10 -5 5])
        hold on;
        plot(x2,y,'LineWidth',3);
        axis([-10 10 -5 5])
        hold on;
    end
    
end