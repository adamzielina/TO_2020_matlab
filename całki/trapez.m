function [ct] = trapez(x,y)

h = x(2) - x(1);
i = length(x);
ct = h.*[(1/2).*(y(1)+y(i)) + (sum(y) - y(1) - y(i)) ];

end
