%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 1
% Problem number: 4
% Student Name:  Alden Rivera
% Student ID: 0416329
% Email address: aldenj.riveraf@gmail.com
% Department:Computer Science
% Date: 2019/4/18
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;clear;clc;

disp('Midterm Problem 1.4');
b=input('Input b:');
dx=0.001;
x=-5:dx:-2;
ylim([-50 50]);
y=(2.*exp(-2.*x) - (b.*x.*cos(abs(5.*x)))+(abs(x).^(0.5)))./((x-1).*(x-2).*(x+1).*(x+2));
plot(x,y,'LineWidth',3);
hold on;

x=-2:dx:-1;
ylim([-50 50]);
y=(2.*exp(-2.*x) - (b.*x.*cos(abs(5.*x)))+(abs(x).^(0.5)))./((x-1).*(x-2).*(x+1).*(x+2));
plot(x,y,'LineWidth',3);
hold on;
x=-1:dx:1;
ylim([-50 50]);
y=(2.*exp(-2.*x) - (b.*x.*cos(abs(5.*x)))+(abs(x).^(0.5)))./((x-1).*(x-2).*(x+1).*(x+2));
plot(x,y,'LineWidth',3);
hold on;
x=1:dx:2;
ylim([-50 50]);
y=(2.*exp(-2.*x) - (b.*x.*cos(abs(5.*x)))+(abs(x).^(0.5)))./((x-1).*(x-2).*(x+1).*(x+2));
plot(x,y,'LineWidth',3);
hold on;
x=2:dx:5;
ylim([-50 50]);
y=(2.*exp(-2.*x) - (b.*x.*cos(abs(5.*x)))+(abs(x).^(0.5)))./((x-1).*(x-2).*(x+1).*(x+2));
plot(x,y,'LineWidth',3);
