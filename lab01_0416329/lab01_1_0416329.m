
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number:01
% Problem number:1
% Student Name: Alden Rivera
% Student ID: 0416329
% Email address: aldenj.riveraf@gmail.com
% Department: Computer Science, NCTU
% Date: 2019/03/28
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf;clear;clc;
fprintf('Student ID:0416329 Student name: Alden Rivera\n');
while 1
    a = input('Input a:');
    if(a == 0)
        fprintf('Thanks for playing\n');
        break;
    end
    dx = input('Please input dx:\n');
    if(dx==0)
        dx=0.05;
    elseif(dx<0)
        dx=input('dx must be non-negative,input again:\n');
    end
    x=-10:dx:10;
    y=a.*abs(x) + sin(x);
    plot(x,y,'LineWidth',3);
    hold on;
end