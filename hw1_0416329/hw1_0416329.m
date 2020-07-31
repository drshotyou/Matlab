%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 1
% Student Name:Alden Rivera
% Student ID:0416329
% Email address: aldenj.riveraf@gmail.com
% Department: Computer Science, NCTU
% Date: 2019/03/07
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
disp('Problem 1,1');
n=8;
P=[-n:2:n];
disp(P);
clear;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('Problem 1,2');
x=ones(7);
x=[x(1)/-27 x(2)/4 x(3)*-1 x(4) x(5) x(6)*4];
z = meshgrid(x);
disp(z)
clear
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('Problem 1,3');
n=10;
X=[(-1).^(0:n-1)];
disp(X);   
clear;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('Problem 1,4');
n=10;
x=repmat([1,2],1,n/2);
disp(x);
clear;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('Problem 1,5');
n=10;
x=mod([0:n-1],3)+1;
disp(x)
clear
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('Problem 2,1');
[x,y] = meshgrid(-8:0.4:8 -8:0.4:8);
z = y .* sin(x);
surf(x, y, z)
clear;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('Problem 2,2');
x = [0:0.01:4];
y1 = x;
plot(y1)
hold on;
y2 = x .^ 2;
plot(y2);
y3 = x .^ 3;
plot(y3);
y4 = exp(x);
plot(y4);
y5 = exp(-x);
plot(y5);
y6 = log(x);
plot(y6);
hold off;
clear; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('Problem 2.3');
x = [-10:0.5:10];
y = sin(x) - x;
z = sin(y.^2) - exp(x) ./ x;
plot(x,z, 'o');
hold on;
x = [-10:0.001:10];
y = sin(x) - x;
z = sin(y.^2) - exp(x) ./ x;
plot(x,z);
hold off
clear
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('Problem 2,4');
[X Y] = meshgrid(-10:0.5:10);
Z=(X+Y)./(X.^2 + Y.^2 +1);
meshc(X,Y,Z);
shading faceted;
clear;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('Problem 2,4');
X=[-10:0.5:10];
Y1=0.5 + (X.*sin(X) )./(X.^2.*exp(sin(X))+1);
Y2=cos(X).^2 +sin(X).^2;
plot(Y1);
hold on;
plot(Y2);
hold off;
clear;

                      