%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 1
% Problem number: 3
% Student Name:  Alden Rivera
% Student ID: 0416329
% Email address: aldenj.riveraf@gmail.com
% Department:Computer Science
% Date: 2019/4/18
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;clear;clc;

disp('Midterm Problem 1.3');
while 1
    m=input('Input m:');
    if(m<0 || m>5)
        while(m<0 || m>5)
            m=input('Please input m in range [0,5]');
        end
    end
    if (m==0)
        disp('Thanks for playing')
        return
    end
    cla;
    x=-5:0.02:5;
    total=0;
    for n=0:1:m
        y1=sinh(x);
        y2=(x.^((2.*n)+1))./factorial((2.*n) +1);
        total=total + y2;
        plot(x,y1,'b','LineWidth',5)
        hold on;
        plot(x,total,'LineWidth',2)
        hold on;
    end
end
