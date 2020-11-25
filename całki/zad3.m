clc; close all; clear;

x = [0:9];
y = x.^2 - 5.*x + 2;
yp = (x+1/2).^2 - 5.*(x+1/2) + 2;

disp('nasza metoda trapezow')
tic
trap = trapez(x,y)
toc

disp('nasza metoda prostokatow')
tic
prost = prostokat(x,yp)
toc

disp('wbudowana metoda quad')
tic
Q = quad (@myfun,0,9)
toc

disp('wbudowana metoda int')
tic
syms Z
G=int(Z.^2 - 5.*Z + 2,0,9)
toc

function y = myfun(x)
y = x.^2 - 5.*x + 2;
end
