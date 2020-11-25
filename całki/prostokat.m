function [ct] = prostokat(x,y)

h = x(2) - x(1);
i = length(x);
ct = h.*(sum(y) - y(1) - y(i));

end
