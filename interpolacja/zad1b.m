clc 
clear all
close all

x=-4:4;
y=-4:4;

[X Y]=meshgrid(x,y);
Z=sin(X)+Y.^2;
[Xi Yi]=meshgrid(-4:0.25:4);

disp('czas interpolacji metodą linear:');
tic
W=interp2(X,Y,Z,Xi,Yi);
toc
fprintf('\nczas interpolacji metodą nearest:\n');
tic
W2=interp2(X,Y,Z,Xi,Yi,'nearest');
toc
fprintf('\nczas interpolacji metodą next:\n');
tic
W3=interp2(X,Y,Z,Xi,Yi,'next');
toc

sgtitle('f(x,y)=sin(x)+y^2');
subplot(3,1,1);
mesh(Xi,Yi,W);
title('linear');

subplot(3,1,2)
mesh(Xi,Yi,W2);
title('nearest');

subplot(3,1,3)
mesh(Xi,Yi,W3);
title('next');
