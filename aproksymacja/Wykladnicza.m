function [b,c] = Wykladnicza(x,y)
z = log(y);
[a1,a2] = Liniowa(x,z);
b = exp(a2);
c = a1;
end
