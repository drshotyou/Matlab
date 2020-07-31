%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 2
% Problem number: 1
% Student Name:  Alden Rivera
% Student ID: 0416329
% Email address: aldenj.riveraf@gmail.com
% Department:Computer Science
% Date:2019/05/23
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Galaxy
clear;
nmax = 300;
n = input('Enter the number of particles [0,300]:');
while true
    if ( n ==0)
        disp('Student ID:0416329');
        disp('Thanks for playing');
        return;
    end
    if (1 <= n && n<=nmax)
        fprintf('The system generates %d particles.Emjoy the simulation',n);
        break;
    end
end

P = zeros(n,2);         % position of free particles
V = zeros(n, 2);        % velocities of free particles
d=zeros(n,1);
% generate the free particles
rmin = 10;
rmax = 50;
nc = 0;
xmin=-80;
xmax=80;


while nc < n
  
    x0=rand(1);
    x0 = xmin + (xmax - xmin).*x0;
    y0=rand(1);
    y0= xmin + (xmax-xmin).*y0;
    pd=sqrt((x0).^2+(y0).^2);
    if(1<=pd && pd<=50)
        nc = nc + 1;
        d(nc)=pd;
        P(nc,1:2) = [x0 y0];
    end
    
 end

%set the velocities of particles orthogonal to p - [0 0]
%the speed is 20.
s = 20;
v=zeros(n,2);
for k = 1:n
    v(k,:) = s.* [P(k,2) -P(k,1)]./d(k); 
end

m = 1;
M = 10000;
t0 = 0;
dt = 0.025;     % time step size
t = t0;         % time
f=zeros(n,2);
a=zeros(n,2);
cp0 = [0 0 1];
cp1 = [1 0 0];
particleColor=zeros(k,1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%insert your own stuff
%update galaxy system
%show particles
%color interpolation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

while true
    clf;
    plot(0,0,'.');
    for k = 1:n
        f(k,:) = (-(P(k,:)./d(k)).*((m.*M)./(1+P(k,:).^2)));
        a(k,:) = f(k,:)./(m);
        v(k,:) = v(k,:)+a(k,:).*dt;
        P(k,:) = P(k,:) + v(k,:).*dt;
        t = t + dt;
        tempD=sqrt(P(k,1).^2 + P(k,2).^2);
        vD = min(1,d/50);
        particleColor = cp0 + vD.*(cp1-cp0);
        plot(P(k,1),P(k,2),'o','LineWidth',3,'color',particleColor(k,:));
        hold on;
    end
    

    axis([-80 80 -80 80]);
    pbaspect([ 1 1 1])
    pause(0.033);
end


