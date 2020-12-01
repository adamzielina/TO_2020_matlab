clc; close all; clear;

load hospital;

subplot(1,3,1)
boxplot(hospital.Age)
title("Wiek")

subplot(1,3,2)
boxplot(hospital.Weight)
title("Waga")

subplot(1,3,3)
boxplot(hospital.BloodPressure(:,1))
title("Górne ciśnienie")
