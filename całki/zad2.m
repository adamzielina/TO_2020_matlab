clc; close all; clear;

x = linspace(0,9,100);
y = x.^2 - 5.*x + 2;
ymax = max(y);
ymin = min(y);

pole = [x(end) - x(1)].*[ymax - ymin];

yrand = rand(1,100).*42-4;

c = 0;
for i=1:100
    if (yrand(i) > 0 & yrand(i) < y(i))
          c = c + 1;
    end
    if  (yrand(i) < 0 & yrand > y(i))
            c = c -1;        
    end
end


calka = pole*c/100

plot(x,y, 'g')
xlabel('x')
ylabel('y')
set(gca, 'Color', 'y')
hold on
plot(x,yrand,'o')
title ('f(x)=x^2-5x+2')
