%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number:2
% Problem number:5
% Student Name:Alden Rivera
% Student ID:0416329
% Email address:aldenj.riveraf@gmail.com
% Department: Computer Science, NCTU
% Date: 2019/03/24
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clf;
fprintf('Student ID:0416329 \n Name:Alden Rivera\n');
cla;
dt=0.02;
t=0:dt:10;
v=zeros(1,numel(t));
p=zeros(1,numel(t));
while 1
    d=input('Input d:');
    for k=0:0.1:1
        for i=2:numel(t)
            v(i)=v(i-1)+(k.*sin(t(i)).*dt)-(d.*v(i-1));
            p(i)=p(i-1)+(v(i).*dt);
        end
        
        plot(t,p);
        hold on;
    end
end
