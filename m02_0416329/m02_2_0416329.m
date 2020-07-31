%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 2
% Problem number: 2
% Student Name:  Alden Rivera
% Student ID: 0416329
% Email address: aldenj.riveraf@gmail.com
% Department:Computer Science
% Date:2019/05/23
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clf;clear;
I = imread('tmp.png');
I = im2double(I);
I1 = imresize(I,[640 640]);
imshow(I1);
while true
    disp('1.Show student name and ID.');
    disp('1.Shift the image to left');
    disp('1.Shift the image to right');
    disp('1.Shift the image to top');
    disp('1.Shift the image to bottom');
    disp('1.Turn spotlight on or off');
    op = input('Please enter an option:');
    if op==1
        disp('Student ID:0416329');
        disp('Thanks for playing');
        return;
    end
    if op==2
        for k=1:9:639
            for j=1:640
                temp=I1(j,1:10,:);
                for i=1:9:620
                    I1(j,i:i+9,:)=I1(j,i+9:i+18,:);
                end
                I1(j, 622:631,:) = I1(j, 631:640,:);
                I1(j, 631:640,:)= temp;
            end
            imshow(I1);
        end
    elseif op==3
         for k=1:9:639
            for j=1:640
                temp=I1(j,631:640,:);
                for i=640:-9:19
                    %fprintf('i-9: %d i-18: %d i:%d\n',i-9,i-18,i);
                    I1(j,i-9:i,:)=I1(j,i-18:i-9,:);
                end
                %I1(j, 31:40,:) = I1(j, 22:31,:);
                I1(j, 1:10,:) = temp;
            end
            imshow(I1);
        end
    elseif op==4
        for k=1:9:639
            for j=1:640
                temp = I1(1:10,j,:);
                for i=1:9:620
                    I1(i:i+9,j,:)=I1(i+9:i+18,j,:);
                end
                I1(622:631,j,:)=I1(631:640,j,:);
                I1(631:640,j,:)=temp;
            end
        imshow(I1);
        end
    elseif op==5
        for k=1:9:639
            for j=1:640
                temp=I1(631:640,j,:);
                for i=640:-9:19
                    %fprintf('i-9: %d i-18: %d i:%d\n',i-9,i-18,i);
                    I1(i-9:i,j,:)=I1(i-18:i-9,j,:);
                end
                %I1(j, 31:40,:) = I1(j, 22:31,:);
                I1(1:10,j,:) = temp;
            end
            imshow(I1);
        end
    elseif op==6
        %Id=im2double(I1);
        %s=size(I1);
        %K = ones(size(I1), 'double');
        %%[x y] = meshgrid([1:s(2)]);
        %x = (x-s(2)/2)./100;
        %y = (y-s(2)/2)./100;
        %r = sqrt(x.^2 + y.^2) ;
        %z = abs(sin(r) ./r);
        %zmax = max(max(z));
        %z = z ./ zmax;
        %K = Id;
        %for i = 1:s(2)
        %    for j = 1:s(2)
        %      K(i,j,:) = z(i,j);
        %    end
        %end
        %imshow(Id.*K);
    end

end


