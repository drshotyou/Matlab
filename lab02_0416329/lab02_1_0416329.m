%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab Two
% Problem number:1
% Student Name:Alden Rivera
% Student ID:0416329
% Email address:aldenj.riveraf@gmail.com
% Department: Computer Science, NCTU
% Date:2019/04/29
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;
disp('Lab Two Problem 1');
t=0;
i=2;
%v1=15;
%v2=20;
p1(1,:)=[0 0];
p2(1,:)=[0 0];
dt=0.02;
v1(1,:)=[15 20];
v2(1,:)=[15 20];
%a1=0;
%a2=0;
m=1;
g=2;
n=[0 -1];
radii(1,:)= [1 1];
while 1
    d1=input('Input d1 in [0 1]:');
    d2=input('Input d2 in [0 1]:');
    if(d1<0 || d2<0)
        break;
    end
    cla;
    
    while(t<=100)
        F(i,:)=m.*g.*n
        %F=m.*g.*n;
        a1(i,:)=F(i,:)./m-(d1.*v1(i-1,:))
        v1(i,:)=v1(i-1,:)+a1(i,:).*dt
        p1(i,:)=p1(i-1,:)+v1(i,:).*dt
        t=t+dt
        subplot(1,2,1);
        grid on;
        axis([0 400 -100 100]);
        figure(1) ,plot(p1(:,1),p1(:,2),'color','b','LineWidth',1);
        %viscircles([p1(:,1) p1(:,2)],p1(1,:));
        hold on;
        a2(i,:)=F(i,:)./m-(d2.*v2(i-1,:));
        v2(i,:)=v2(i-1,:)+a2(i,:).*dt
        p2(i,:)=p2(i-1,:)+v2(i,:).*dt;
        subplot(1,2,2);
        axis([0 400 -100 100]);
        pause(dt);
        figure(1), plot(p2(:,1),p2(:,2),'color','b','LineWidth',1);
        grid on;
        %viscircles([p2(:,1) p2(:,2)],p2(1,:));
        i=i+1;
        hold on;
        
    end
end
    

