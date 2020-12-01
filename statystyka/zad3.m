clc; close all; clear;

load hospital;
C = hospital.BloodPressure(:,1);
CSR = mean(C)
COd = std(C)

h = histogram(C)
hold on;

c = sort(C);
Y = normpdf(c,CSR,COd)*100;
plot(c,Y);
