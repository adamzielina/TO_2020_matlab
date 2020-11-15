clc; close all; clear;


x = [1:13];
y = [-4,8,12,10,4,2,-12,-2,-13,0,3,3,5];
xpol = [0:0.1:13];

plot(x,y,'kp');
xlabel('x');
ylabel('y');
grid on;
hold on;

p1=polyfit(x,y,1);
ypol1 = polyval(p1,xpol);
plot(xpol,ypol1, 'r');
hold on;

p3=polyfit(x,y,3);
ypol2 = polyval(p3,xpol);
plot(xpol,ypol2, 'b');
hold on;

p5=polyfit(x,y,5);
ypol3 = polyval(p5,xpol);
plot(xpol,ypol3, 'g');

legend('punkty','wiel 1. st','wiel 3 st','wiel 5. st');

p1,
p3,
p5,
