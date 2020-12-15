clc; close all; clear;

j=1;
WYNIK=0;
for i=linspace(-50,120,100)
 [status,result]=system(char(strcat({'to1002.exe'},{' '},{num2str(i)})));
 WYNIK(j)=str2num(result);
 j=j+1;

end
subplot (3,1,1)
i=linspace(-50,120,100);
plot(i,WYNIK);
title('argumenty (-50,120)');
xlabel('wejście');
ylabel('wyjście');


clear, clc
j=1;
WYNIK=0;
for i=linspace(120,-50,100)
 [status,result]=system(char(strcat({'to1002.exe'},{' '},{num2str(i)})));
 WYNIK(j)=str2num(result);
 j=j+1;

end
subplot (3,1,2)
i=linspace(120,-50,100);
plot(i,WYNIK);
title('odwrócona kolejność');
xlabel('wejście');
ylabel('wyjście');

clear, clc
j=1;
WYNIK=[];

ew=linspace(-50,120,100)
for i=[0:49]
 [status,result]=system(char(strcat({'to1002.exe'},{' '},{num2str(ew(i+1))})));
 WYNIK(j)=str2num(result);
 j=j+1;
 [status,result]=system(char(strcat({'to1002.exe'},{' '},{num2str(ew(end-i))})));
 WYNIK(j)=str2num(result);
 j=j+1;

end
subplot (3,1,3)
j=1;
so=[];
for i=[0:49]
    so(j)=ew(i+1);
    j=j+1;
    so(j)=ew(end-i);
    j=j+1;
end
ew=linspace(-50,120,100);
plot(so,WYNIK,'or');
title('naprzemiennie');
xlabel('iteracja dla wejśćia');
ylabel('wyjście');
