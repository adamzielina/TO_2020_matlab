clear; clc; close all
wariant=1; 
p1=1; p2=200; p3=pi; fp=100000; dt=1/fp;
R1=1000; R2=2000; L=5*10^(-2); 
u2(1)=-0.006*R2;

tmax=0.1;  t=0:dt:tmax; N=length(t);
 h=dt;
for n=1:N-1,
k1=h * froz(t(n), u2(n), R1,R2, L,p1, p2, p3, wariant);
k2=h * froz(t(n)+h/2, u2(n)+k1/2, R1,R2, L,p1, p2, p3, wariant);
k3=h * froz(t(n)+h/2, u2(n)+k2/2, R1, R2, L,p1, p2, p3, wariant);
k4=h * froz(t(n)+h, u2(n)+k3, R1, R2, L,p1, p2, p3, wariant);
u2(n+1)=u2(n) + k1/6+2*k2/6+2*k3/6+k4/6;
end;

x=p1*cos(2*pi*p2*t);
plot(t,x);
title('Ug= cos(2π*200t+π)')
xlabel('t');
ylabel('Ug');
xlim([0.001,0.05]);
  
figure;
plot (t,u2);
title('u2(t)');
xlabel('t');
ylabel('u2');
xlim([0.001,0.03]);

figure;
i=u2/R2;
plot(t,i);
title('i(t)=u2(t)/R2');
xlabel('t');
ylabel('i');
xlim([0.001,0.03]);
