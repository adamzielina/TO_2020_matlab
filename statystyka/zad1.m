clc; close all; clear;

load hospital;


SAge = mean(hospital.Age)
SWeight = mean(hospital.Weight)
SBP = mean(hospital.BloodPressure)

OdAge = std(hospital.Age)
OdWeight = std(hospital.Weight)
OdBP = std(hospital.BloodPressure)
