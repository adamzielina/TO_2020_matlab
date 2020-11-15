clc; close all; clear;

x = [1:13];
y = [1,5,10,4,6,12,18,14,10,20,21,22,23];
xpol = [0:0.1:13];

plot(x,y,'kp');
xlabel('x');
ylabel('y');
grid on;
hold on;

[a1, a2] = Liniowa(x, y);
ypol = a1.*xpol + a2;
plot(xpol,ypol, 'r');
hold on;

[b,c] = Potegowa(x,y)
ypol2 = b*xpol.^c;
plot(xpol,ypol2, 'b');
hold on;


[b,c] = Wykladnicza(x,y)
ypol3 = b*exp(c*xpol);
plot(xpol,ypol3, 'g');
hold on;

legend('punkty','Liniowa','Potegowa','Wykladnicza');
