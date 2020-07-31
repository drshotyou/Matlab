%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab
% Problem number: 2
% Student Name:  Alden Rivera
% Student ID: 0416329
% Email address: alden.riveraf@gmail.com
% Department: Computer Science, NCTU
% Date: 2019/05/13
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

% show Lab
disp('Lab Problem 4.2')  
x = 0:0.01:pi*2;
r = cos(2.*x) .* sin(2.*x);
polar(x, r, 'w');
[X Y] = pol2cart(x, r);
hold on
for p = [1:length(x)]   
    fill(X(1:p), Y(1:p), 'y');
    pause (0.0333)
end
hold off
