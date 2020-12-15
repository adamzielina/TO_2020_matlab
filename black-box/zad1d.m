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
title('dla 1 argumentu');
xlabel('wejście');
ylabel('wyjście');


clear, clc
j=1;
WYNIK=0;

for i=linspace(-50,120,100)
    top = linspace(-50,120,100)/2+10;
 [status,result]=system(char(strcat({'to1002.exe'},{' '},{num2str(i)},{' '},{num2str(top(j))})));
 WYNIK(j)=str2num(result);
 j=j+1;

end
subplot(3,1,2)
sgtitle('wykres wyjście(wejście)');
i=linspace(-50,120,100);
plot(i,WYNIK);
title('dla 2 argumentów');
xlabel('wejście');
ylabel('wyjście');


clear, clc
j=1;
WYNIK=0;

for i=linspace(-50,120,100)
    top = linspace(-50,120,100)/2+10;
 [status,result]=system(char(strcat({'to1002.exe'},{' '},{num2str(i)},{' '},{num2str(top(j))},{' '},{num2str(top(j)+50)})));
 WYNIK(j)=str2num(result);
 j=j+1;

end
subplot(3,1,3)
sgtitle('wykres wyjście(wejście)');
i=linspace(-50,120,100);
plot(i,WYNIK);
title('dla 3 argumentów');
xlabel('wejście');
ylabel('wyjście');
