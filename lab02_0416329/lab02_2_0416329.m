%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab Two
% Problem number:2
% Student Name:Alden Rivera
% Student ID:0416329
% Email address:aldenj.riveraf@gmail.com
% Department: Computer Science, NCTU
% Date:2019/04/29
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;

disp('Lab Two Problem 2');
disp('0416329 Alden Rivera');

while 1
    a=input('Input a:');
    if(a==0)
        disp('Thanks for playing');
        break;
    end
    dx=input('Input dx:');
    if(dx==0)
        dx=0.05;
    elseif (dx<0 || dx>1)
        while (dx<0 || dx>1)
            dx=input('dx must be inside (0,1], input again');
        end
    end
    %x=-10:dx:10;
    %y=abs(x) + a.*sin(x);
    %axis([-10 10 -20 20]);
    %plot(x,y,'LineWidth',5,'color','b');
    %hold on;
    %grid on;
    for(x0=-10:dx:10)
        clf;
        axis([-10 10 -20 20]);
        x=-10:dx:10;
        y=abs(x) + a.*sin(x);
        plot(x,y,'color','b','LineWidth',3);
        hold on;
        y=abs(x0) + a.*sin(x0);
        plot(x0, y, 'o', 'color','r');
        pause(0.025);
     
       
        %hold on;
        %hold on;
        %hold on;
        grid on;
        
    end
    
end