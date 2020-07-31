
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
    m=input('Input m:');
    if(m<0 || m>10)
        while(m<0 || m>10)
            m=input('Input m in [0,10]:');
        end
    elseif(m==0)
        fprintf('Thanks for playing');
        break;
    end
    cla;
    x=-10:0.01:10;
    y1=cos(x);
    total=0;
    plot(x,y1,'LineWidth',4);
    hold on;
    for n=0:m;
        
        y2=(((-1).^n)./(factorial(2.*n))).*(x.^(2.*n));
        total=total+y2;
        plot(x,total,'LineWidth',2);
        
    end
end