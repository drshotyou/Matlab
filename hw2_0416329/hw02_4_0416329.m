%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number:2
% Problem number:4
% Student Name:Alden Rivera
% Student ID:0416329
% Email address:aldenj.riveraf@gmail.com
% Department: Computer Science, NCTU
% Date: 2019/03/24
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clf;
fprintf('Student ID:0416329 \n Name:Alden Rivera\n');
x=-5:0.005:10;
y=(5.*(x.^2)+(2.*x)+7)./(x.^2-5.*x-14);
i = find (y>=0);
y1=y(i);
x1=x(i);
plot(x1,y1,'r','LineWidth',2);
hold on;
i = find(y<0);
y2=y(i);
x2=x(i);
plot(x2,y2,'b','LineWidth',2);
hold on;