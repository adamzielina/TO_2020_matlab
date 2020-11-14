clear all; clc; close all;

syms x;
f=inline('3*(x-9)^4-3*x^3+2*x^2-x-3');
z=diff(f(x));
f1=inline(z);

imax=10000

w=0.0001
iteracje=1;
x0=1;
for k=1:5
    x=20;
    for l=0:imax
        y=x;
        x=y-(f(x)/f1(x));
        if abs(x-y) < w(1,end)
            x0=[x0, x]
            break
        end
    end
    iteracje=[iteracje l]
    fprintf('Liczba iteracji: ');
    l
    x
    w=[w, w(1,end)*10]
end
iteracje=iteracje(2:end)
x0=x0(2:end)
w=w(1:end-1)
semilogx(w,iteracje,'b-s')
xlabel("Błąd")
ylabel("Ilość iteracji")
