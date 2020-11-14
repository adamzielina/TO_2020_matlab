clc 
clear all
close all

x=linspace(-3,3,5);
y=x.^2;

xi=linspace(-3,3,50);
yi1=interp1(x,y,xi);
yi2=interp1(x,y,xi,'nearest');
yi3=interp1(x,y,xi,'next');

sgtitle('f(x)=x^3+2x^2');

subplot(3,1,1);
plot(xi,yi1);
title('5 punktów');
xlabel('x');
ylabel('y');
hold on
plot(xi,yi2);
plot(xi,yi3);
grid on;
plot(x,y,'o');
legend('linear','nearest','next','węzły');

x=linspace(-3,3,10);
y=x.^2;

xi=linspace(-3,3,50);
yi1=interp1(x,y,xi);
yi2=interp1(x,y,xi,'nearest');
yi3=interp1(x,y,xi,'next');

subplot(3,1,2);
plot(xi,yi1);
title('10 punktów');
xlabel('x');
ylabel('y');
hold on
plot(xi,yi2);
plot(xi,yi3);
grid on;
plot(x,y,'o');
legend('linear','nearest','next','węzły');

x=linspace(-3,3,100);
y=x.^2;

xi=linspace(-3,3,50);
yi1=interp1(x,y,xi);
yi2=interp1(x,y,xi,'nearest');
yi3=interp1(x,y,xi,'next');

subplot(3,1,3);
plot(xi,yi1);
title('20 punktów');
xlabel('x');
ylabel('y');
hold on
plot(xi,yi2);
plot(xi,yi3);
grid on;
plot(x,y,'o');
legend('linear','nearest','next','węzły');
