clc; close all; clear;

load hospital;

PW = hospital(:,[2 4]);

ik = 1;
ich = 1;

for i = 1:100
   
    if PW.Sex(i) == 'Female'
        WagK(ik) = PW.Weight(i);
        
        ik = ik + 1;
    else
        WagCh(ich) = PW.Weight(i);
        
        ich = ich + 1;
    end
    
end

WagKS = mean(WagK);
WagKOd = std(WagK);

wk = sort(WagK)
Y = normpdf(wk,WagKS,WagKOd);
plot(wk,Y);
title('Rozkład normalny wagi')
hold on;


WagChS = mean(WagCh);
WagChOd = std(WagCh);

wc = sort (WagCh)
y = normpdf(wc,WagChS,WagChOd);
plot(wc,y);

legend('Kobiety', 'Chłopy');
