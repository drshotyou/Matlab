%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number:2
% Problem number:3
% Student Name:Alden Rivera
% Student ID:0416329
% Email address:aldenj.riveraf@gmail.com
% Department: Computer Science, NCTU
% Date: 2019/03/24
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clf;
fprintf('Student ID:0416329 \n Name:Alden Rivera\n');
while 1
    m=input('Please input m:');
    if(m<-1 || m>10)
        while(m<-1 || mm>10)
            m=input('Please input m in range [-1,10]:');
        end
    end
    if(m==-1)
        fprintf('Thanks for playing');
    end
    cla;
    %ylim([-1.5,1.5]);
    x=-5:0.01:5;
    yn=zeros(size(x));
    y1=sin(x);
    plot(x,y1,'LineWidth',4);
    hold on;
    for n=0:m
        
        y2=(((-1).^n)/(factorial(2.*n+1))).*(x.^(2.*n+1));
        yn=yn+y2;
        plot(x,yn,'LineWidth',1);
        hold on;
    end
    ylim([-1.5,1.5]);
end