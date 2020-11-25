clc; close all; clear;

tic
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

disp('dla 100 punktów')
calka = pole*c/100
toc

subplot(4,1,2)
plot(x,y, 'g')
xlabel('x')
ylabel('y')
set(gca, 'Color', 'y')
hold on
plot(x,yrand,'o')
str = sprintf("Dla 100 punktow calka = %d",ceil(calka));
title(str)



tic
x = linspace(0,9,50);
y = x.^2 - 5.*x + 2;
ymax = max(y);
ymin = min(y);

pole = [x(end) - x(1)].*[ymax - ymin];

yrand = rand(1,50).*42-4;

c = 0;
for i=1:50
    if (yrand(i) > 0 & yrand(i) < y(i))
          c = c + 1;
    end
    if  (yrand(i) < 0 & yrand > y(i))
            c = c -1;        
    end
end

disp('dla 50 punktów')
calka = pole*c/50
toc

subplot(4,1,3)
plot(x,y, 'g')
xlabel('x')
ylabel('y')
set(gca, 'Color', 'y')
hold on
plot(x,yrand,'o')
str = sprintf("Dla 50 punktow calka = %d",ceil(calka));
title(str)


tic
x = linspace(0,9,20);
y = x.^2 - 5.*x + 2;
ymax = max(y);
ymin = min(y);

pole = [x(end) - x(1)].*[ymax - ymin];

yrand = rand(1,20).*42-4;

c = 0;
for i=1:20
    if (yrand(i) > 0 & yrand(i) < y(i))
          c = c + 1;
    end
    if  (yrand(i) < 0 & yrand > y(i))
            c = c -1;        
    end
end

disp('dla 20 punktów')
calka = pole*c/20
toc

subplot(4,1,4)
plot(x,y, 'g')
xlabel('x')
ylabel('y')
set(gca, 'Color', 'y')
hold on
plot(x,yrand,'o')
str = sprintf("Dla 20 punktow calka = %d",ceil(calka));
title(str)


tic
x = linspace(0,9,1000);
y = x.^2 - 5.*x + 2;
ymax = max(y);
ymin = min(y);

pole = [x(end) - x(1)].*[ymax - ymin];

yrand = rand(1,1000).*42-4;

c = 0;
for i=1:1000
    if (yrand(i) > 0 & yrand(i) < y(i))
          c = c + 1;
    end
    if  (yrand(i) < 0 & yrand > y(i))
            c = c -1;        
    end
end

disp('dla 1000 punktów')
calka = pole*c/1000
toc

subplot(4,1,1)
plot(x,y, 'g')
xlabel('x')
ylabel('y')
set(gca, 'Color', 'y')
hold on
plot(x,yrand,'o')
str = sprintf("Dla 1000 punktow calka = %d",ceil(calka));
title(str)
