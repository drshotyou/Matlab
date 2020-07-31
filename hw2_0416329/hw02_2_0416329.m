%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number:2
% Problem number:2
% Student Name:Alden Rivera
% Student ID:0416329
% Email address:aldenj.riveraf@gmail.com
% Department: Computer Science, NCTU
% Date: 2019/03/24
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clf;
fprintf('Student ID:0416329 \n Name:Alden Rivera\n');
while 1
    fprintf('');
    %for i=1:2
     a=input('Please input the range of a,[aMin,aMax]:');
    %end
    da=input('Please input da:');
    if(da<0)
        while(a<0)
            da=input('da must be a non-negative number,please input da again:');
        end
    end
        
    if(da==0)
        fprintf('Thanks for playing');
    end
    cla;
    x=-10:0.05:10;
    for i=a(1):da:a(2)
        y=abs(sin(i.*x).*cos(x));
        plot(x,y);
        hold on;
    end
    
    
end