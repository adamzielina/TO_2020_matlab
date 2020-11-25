clc; close all; clear;

x = linspace(0,9,10);
y = x.^2 - 5.*x + 2;
disp('krok 1')
tic
trap = trapez(x,y)
toc
yplot=0.*linspace(0,9,10);
subplot(3,1,1)
plot (x,y,x,yplot,'o')
str = sprintf("Dla kroku 1 = %d",trap);
title(str)

x = linspace(0,9,91);
y = x.^2 - 5.*x + 2;
disp('krok 0,1')
tic
trap = trapez(x,y)
toc
yplot=0.*linspace(0,9,91);
subplot(3,1,2)
plot (x,y,x,yplot,'o')
str = sprintf("Dla kroku 0,1 = %d",trap);
title(str)

x = linspace(0,9,900);
y = x.^2 - 5.*x + 2;
disp('krok 0,01')
tic
trap = trapez(x,y)
toc
yplot=0.*linspace(0,9,900);
subplot(3,1,3)
plot (x,y,x,yplot,'o')
str = sprintf("Dla kroku 0,01 = %d",trap);
title(str)
