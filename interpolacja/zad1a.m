clc 
clear all
close all

x=linspace(-3,3,6);
y=x.^3+2*x.^2;

xi=linspace(-3,3,20);
disp('czas interpolacji metodą linear:');
tic
yi1=interp1(x,y,xi);
toc
fprintf('\nczas interpolacji metodą nearest:\n');
tic
yi2=interp1(x,y,xi,'nearest');
toc
fprintf('\nczas interpolacji metodą next:\n');
tic 
yi3=interp1(x,y,xi,'next');
toc

plot(xi,yi1);
title('f(x)=x^3+2x^2');
xlabel('x');
ylabel('y');
hold on
plot(xi,yi2);
plot(xi,yi3);
grid on;
plot(x,y,'o');
legend('linear','nearest','next','węzły');
