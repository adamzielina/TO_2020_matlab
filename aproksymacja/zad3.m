clc; close all; clear;

x = [1:6];
y = (rand(1,6)*10);
subplot(4,1,1)
xpol = [0:0.1:6];
plot(x,y,'o');
xlabel('x');
ylabel('y');
grid on;
hold on;
p5=polyfit(x,y,5);
ypol3 = polyval(p5,xpol);
plot(xpol,ypol3, 'k');
title('Dla 6 punktów');


x = [1:10];
y = (rand(1,10)*10);
subplot(4,1,2)
xpol = [0:0.1:10];
plot(x,y,'o');
xlabel('x');
ylabel('y');
grid on;
hold on;
p5=polyfit(x,y,5);
ypol3 = polyval(p5,xpol);
plot(xpol,ypol3, 'g');
title('Dla 10 punktów');


x = [1:20];
y = (rand(1,20)*10);
subplot(4,1,3)
xpol = [0:0.1:20];
plot(x,y,'o');
xlabel('x');
ylabel('y');
grid on;
hold on;
p5=polyfit(x,y,5);
ypol3 = polyval(p5,xpol);
plot(xpol,ypol3, 'r');
title('Dla 20 punktów');


x = [1:40];
y = (rand(1,40)*10);
subplot(4,1,4)
xpol = [0:0.1:40];
plot(x,y,'o');
xlabel('x');
ylabel('y');
grid on;
hold on;
p5=polyfit(x,y,5);
ypol3 = polyval(p5,xpol);
plot(xpol,ypol3, 'b');
title('Dla 40 punktów');
