clc; close all; clear;

x = [0:9];
y = x.^2 - 5.*x + 2;
yp = (x+1/2).^2 - 5.*(x+1/2) + 2; %wersja do liczenia metody prosotkatow

trap = trapez(x,y)
prost = prostokat(x,yp)

plot(x,y)
title ('f(x)=x^2-5x+2')
