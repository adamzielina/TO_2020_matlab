clear all;
clc;
close all;

x=linspace(-3,3,6);
y=x.^3+2*x.^2;
xi=linspace(-3,3,20);

disp('czas trwania naszego algorytmu interpolacji:');
tic
yi = lagrange(x,y,xi);
toc
plot(x,y,'o',xi,yi);
title('x^3+2*x^2');
xlabel('x');
ylabel('y');

function yi = lagrange(x,y,xi) 
    yi = zeros(size(xi));
    for i = 1:length(x)
         u = ones(size(xi));
            for j = [1:i-1 i+1:length(x)]
                u = (xi-x(j))./(x(i)-x(j)).*u;
            end
            yi = yi + u*y(i);
    end
end
