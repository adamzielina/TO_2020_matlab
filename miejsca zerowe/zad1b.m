clc; clear; close all;
disp('nasz algorytm');
tic
syms x;
f1 = inline('x^4-5');
z = diff(f1(x));
f2 = inline(z);

imax = 10000;
err = 0.00001;
a=20;
X = linspace(-20,a,100);
Y = 1;

for n=1:100
    Y(n) = f1(X(n));
   
end
for l=0:imax
    b=a;
    a=b-(f1(a)/f2(a));
    if abs(a-b)<err
        break
    end
end
   
    c = -50;
    for l=0:imax
        d = c;
        c=d-(f1(c)/f2(c));
        if abs(c-d) <err
            break
        end
    end
    plot(X,Y,'b')
    title('f(x)=x^4-5')
    set(gca, 'Color', 'g')
    xlabel('x')
    ylabel('y')
    grid on 
    hold on
    plot(a,f1(a),'or')
    plot(c,f1(c),'or')
    r=[a;c]
    toc
    disp('algorytm matlaba');
    tic
    p=[1 0 0 0 -5];
    r=roots(p)
    toc
    disp('nasz algorytm jest wolniejszy o 3 rzędy wielkości')
