function [b,c] = Potegowa(x,y) %do zad4.m
z=log(y);
u=log(x);
[a1,a2]=Liniowa(u,z);
b=exp(a2);
c=a1;
end
