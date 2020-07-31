%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number:2
% Problem number:1
% Student Name:Alden Rivera
% Student ID:0416329
% Email address:aldenj.riveraf@gmail.com
% Department: Computer Science, NCTU
% Date: 2019/03/24
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clf;
fprintf('Student ID:0416329 \n Name:Alden Rivera\n')
while 1
    a0=input('Please input a0:');
    b0=input('Please input b0:');
    if(a0==0 && b0==0)
       fprintf('Thanks for playing');
    end
    a=a0-10:1:a0+10;
    b=b0-10:1:b0+10;
    x=-10:0.05:10;
   
    cla;
    for i=1:20
        for j=1:20
            y=a(i).*sin(x)+b(j).*cos(x);
            plot(x,y);
            hold on;
        end
    end
    
 
end
      