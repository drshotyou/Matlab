%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number:01
% Problem number:1
% Student Name: Alden Rivera
% Student ID: 0416329
% Email address: aldenj.riveraf@gmail.com
% Department: Computer Science, NCTU
% Date: 2019/03/28
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t=0;
v=[0 8];
p=[50 0];
tv=size(v);
i=0;
dt=0.05;
M=10000;
m=1;

while 1
    d=input('Input d in range[0,1]:');
    if(d<0)
        break;
    end
    cla;
    for t=0:dt:100
        plot(p(1),p(2),'.');
        hold on;
        nP=norm(p);
        F=-(p./nP).*((m.*M)/(p * p'));
        a=(F./m) - d.*v;
        v=v+a.*dt;
        p=p+v.*dt;
    end
    
end