%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number:01
% Problem number:1
% Student Name: Alden Rivera
% Student ID: 0416329
% Email address: aldenj.riveraf@gmail.com
% Department: Computer Science, NCTU
% Date: 2019/03/28
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a=input('Input a:');
dx=input('Input dx:');
if(dx<0)
    while(dx<0)
        dx=input('dx must be non-negative, input dx:');
    end
end
x=-10:dx:10;
y=(((2.*(x.^2))+(3.*(exp(-x)))-(100.*a).*sin(5.*x))./(6.*(x.^2)-9.*x-42))-10;
s=size(x);
i=1;
sig0 = y(i)>=0;
x1=x(1);
y1=y(1);
c='';
while i<=s(2)
    sig1=y(i)>=0;
    if(sig0==sig1)
        x1=[x1,x(i)];
        y1=[y1,y(i)];
    else
        c='b';
        if(sig0==0)
            c='r';
        end
        plot(x1,y1,c,'LineWidth',2);
        hold on;
        x1=x(i);
        y1=y(i);
    end
    sig0=sig1;
    i=i+1;
end
c='b';
if(sig0==0)
    c='r';
end
plot(x1,y1,c,'LineWidth',2);
ylim([-100,100]);