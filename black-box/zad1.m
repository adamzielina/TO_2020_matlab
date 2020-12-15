clc; close all; clear;

j = 1;
WYNIK=[];
for i=120:-1:-50
 [status,result]=system(char(strcat({'to1002.exe'},{' '},{num2str(i)})));
 WYNIK(j)=str2num(result);
 j=j+1;
end

plot(120:-1:-50, WYNIK, 'r')
xlabel('WEJŚCIE')
ylabel('WYNIK')
grid on
title ('Analiza pliku to1002 dla kroku 1')
