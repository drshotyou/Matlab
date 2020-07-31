
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
    b1 = input('Input b:');
    if(b1 == 0)
        fprintf('Thanks for playing\n');
        break;
    end
    cla;
    x=-10:0.01:10;
    a=abs(sin(x))+1;
    b=-2.*x;
    c=-b1.*(x.^2);
    
    y1=(-b-sqrt(b.^2-4.*a.*c))./(2.*a);
    y2=(-b+sqrt(b.^2-4.*a.*c))./(2.*a);
    
    plot(x,y1,'LineWidth',3);
    hold on;
    plot(x,y2,'LineWidth',3);
end