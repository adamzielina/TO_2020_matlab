a=5;
b=10;
c=3;
delta=b^2-4*a*c;
x1=((-b)+ delta^0.5)/(2*a);
x2=((-b)- delta^0.5)/(2*a);
y=[];
int=1;
for x=-10:0.25:10
    y(int)=a*x^2+b*x+c;
    int=int+1;
end
x=-10:0.25:10;
plot(x,y);
ylim([-20 400]);
hold on;
plot(x1,0,'or');
plot(x2,0,'or');
title('f(x)=ax^2+bx+c');
xlabel('x');
ylabel('y');
