clear; clc; close all;

disp('nasz algorytm');
tic
f = inline('x^2-10');
bis(f, -20, 20, 100);
toc

disp('algorytm matlaba ');
tic
p=[1 0 -10];
r=roots(p)
toc
disp('nasz algorytm jest wolniejszy o 3 rzędy wielkości');

function [x,z] = bis(f, x1, x2, r)

X = linspace(x1,x2,100);
Y = 1;
for n = 1:100
    Y(n) = f(X(n));
end
    
c = x1; d = x2;
a  =  f(x1);  b = f(x2);

    
    for k  =  1:r
 
    x  =  (x1 + x2)/2;
    y  =  f(x);
    z = (c + d)/2;
    y2 = f(z);
    
    if   a*y  < 0 
        x2 = x;
    else
        x1 = x;
    end  
    if b*y2 > 0
        d = z;
    else
        c = z;
    end
    end

plot(X,Y, 'b')
xlabel('x')
ylabel('y')
title('f(x)=x^2-10')
set(gca, 'Color', 'g')
hold on
grid on
plot(z,f(z), 'or')
plot(x,f(x), 'or')
r=[z;x]

end
