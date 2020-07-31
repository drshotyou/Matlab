%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm numer: Two
% Problem number: 4
% Student Name: Alden Rivera
% Student ID: 0416329
% Email address: aldenj.riveraf@gmail.com
% Department: Cmputer Science
% Date: 2019/05/23
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

disp('Midterm Two')

dx = 0.01;
x = -5:dx:5;
y11n = sin(x).*sqrt(abs(x));
y12n = 2.*cos(x).*exp((cos(x.^2)));
y21n = sin(x)+x.^2.*cos(x);
y22n = 2.*sin(x).*exp((sin(x.^2)));
y31n = sin(x)+sin(x) .^2; 
y32n = cos(x)+(1 - sin(x).^2);
y41n = x.^5.*cos(x).*exp(-abs(x));
y42n = x.^5.*sin(x).*exp(-abs(x));
while 1
    while true
        n = input('Please input n:');
        if n>=0 && n <= 10000
            break;
        end
    end
    if (n==0)
        disp('Student ID 0416329.');
        disp('Thanks for playing.');
        return;
    end
    disp('1) Plot the curves of y(1,1) and y(1,2) in one figure.');
    disp('2) Plot two pairs of curves, (y(1,1) and y(1,2)) and (y(2,1) and y(2,2)).');
    disp('3) Plot the four pairs of curves.');
    op = input('Please input an option:');
    h = figure;
    ymin = -15; ymax = 15;
    xmin = -5; xmax = 5;
    if( op == 1)
        for i = 1:n
            x = 10 * rand(1, 1) - 10/2;
            y = 30 * rand(1, 1) - 30/2;
            y11 = sin(x).*sqrt(abs(x));
            y12 = 2.*cos(x).*exp((cos(x.^2)));

            if(y <= max(y11,y12) && y >= min(y11,y12))
                plot(x,y,'.','color','g');
                hold on;
            end
        end
        x = -5:dx:5;
        plot(x, y11n,'color', 'r', 'LineWidth', 2);
        hold on
        plot(x, y12n,'color', 'b', 'LineWidth', 2);
        grid on
    end
    if( op == 2)
        for i = 1:n
            x = 10 * rand(1, 1) - 10/2;
            y = 30 * rand(1, 1) - 30/2;
            y11 = sin(x).*sqrt(abs(x));
            y12 = 2.*cos(x).*exp((cos(x.^2)));
            y21 = sin(x)+x.^2.*cos(x);
            y22 = 2.*sin(x).*exp((sin(x.^2)));
            if(y <= max(y11,y12) && y >= min(y11,y12))
                subplot(2, 1, 1);
                plot(x,y,'.','color','g');
                hold on;
            end
            if(y<= max(y21,y22) && y >= min(y21,y22))
                subplot(2, 1, 2);
                plot(x,y,'.','color','g');
                hold on;
            end
            
        end
        x = -5:dx:5;
        subplot(2, 1, 1);
        plot(x, y11n,'color', 'r', 'LineWidth', 2);
        hold on
        plot(x, y12n,'color', 'b', 'LineWidth', 2);
        grid on
        
        subplot(2, 1, 2);
        plot(x, y21n,'color', 'r', 'LineWidth', 2);
        hold on
        plot(x, y22n,'color', 'b', 'LineWidth', 2);
        grid on
    end
    if( op == 3)
        for i = 1:n
            x = 10 * rand(1, 1) - 10/2;
            y = 30 * rand(1, 1) - 30/2;
            y11 = sin(x).*sqrt(abs(x));
            y12 = 2.*cos(x).*exp((cos(x.^2)));
            y21 = sin(x)+x.^2.*cos(x);
            y22 = 2.*sin(x).*exp((sin(x.^2)));
            y31 = sin(x)+sin(x) .^2; 
            y32 = cos(x)+(1 - sin(x).^2);
            y41 =  x.^5.*cos(x).*exp(-abs(x));
            y42 =  x.^5.*sin(x).*exp(-abs(x));
            if(y <= max(y11,y12) && y >= min(y11,y12))
                subplot(2, 2, 1);
                plot(x,y,'.','color','g');
                hold on;
            end
            if(y <= max(y21,y22) && y >= min(y21,y22))
                subplot(2, 2, 2);
                plot(x,y,'.','color','g');
                hold on;
            end
            if(y <= max(y31,y32) && y >= min(y31,y32))
                subplot(2, 2, 3);
                plot(x,y,'.','color','g');
                hold on;
            end
            if(y <= max(y41,y42) && y >= min(y41,y42))
                subplot(2, 2, 4);
                plot(x,y,'.','color','g');
                hold on;
            end
        end
        x = -5:dx:5;
        subplot(2, 2, 1);
        plot(x, y11n,'color', 'r', 'LineWidth', 2);
        hold on
        plot(x, y12n,'color', 'b', 'LineWidth', 2);
         grid on
        subplot(2, 2, 2);
        plot(x, y21n,'color', 'r', 'LineWidth', 2);
        hold on
        plot(x, y22n,'color', 'b', 'LineWidth', 2);
        grid on
        subplot(2, 2, 3);
        plot(x, y31n,'color', 'r', 'LineWidth', 2);
        hold on
        plot(x, y32n,'color', 'b', 'LineWidth', 2);
        grid on
        subplot(2, 2, 4);
        plot(x, y41n,'color', 'r', 'LineWidth', 2);
        hold on
        plot(x, y42n,'color', 'b', 'LineWidth', 2);
        grid on
    end
    axis([-5 5 -15 15]);
    grid on
end