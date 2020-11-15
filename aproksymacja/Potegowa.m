function [b,c] = Potegowa(x,y)
z=log(y);
u=log(x);
[a1,a2]=Liniowa(u,z);
b=exp(a2);
c=a1;
end
