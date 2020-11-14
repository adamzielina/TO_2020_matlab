y=[];
ind=1;
for x=-6:0.5:7 
    if x<2.5
        y(ind)=(abs(x-1))/(4*x^2+1);
    elseif x==2.5
            y(ind)=1;
        else 
            y(ind)=log10((x-1)^4);
    end
    ind=ind+1;
end
x=-6:0.5:7;
plot(x,y)
title('f(x)');
xlabel('x');
ylabel('y');

dfx=0;
dx=x(2)-x(1);

for temp= 1:ind-2
    dfx=[dfx,((y(temp+1)-y(temp))/dx)];
end
hold on;
plot(x,dfx);
legend('f(x)','df/dx');
