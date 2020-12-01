clc; close all; clear;

load hospital;


subplot(3,1,1)
h = histogram(hospital.Age)
title("Histogram wieku")


subplot(3,1,2)
h = histogram(hospital.Weight)
title("Histogram wagi w funtach")



C = hospital.BloodPressure(:,1);
subplot(3,1,3)
h = histogram(C)
title("Histogram górnego ciśnienia")
