function [a1,a2] = Liniowa(x,y)
n = length(x);
a1 = [n*(sum(x.*y)) - sum(x)*sum(y)] / [n*sum(x.^2) - sum(x)^2];
a2 = [sum(x.^2)*sum(y) - sum(x)*sum(x.*y)] / [n*sum(x.^2) - sum(x)^2];
end
