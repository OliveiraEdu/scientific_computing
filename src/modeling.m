close all;clear all;clc;

% Sample dataset, pick one and uncomment.

%data = csvread('ozone.csv')
data = csvread('energy_consumption.csv')
%data = csvread('vehicular_stopping.csv')

[t,x,y] = read_prepare_data(data);

[yHat_model1, betaHat_model1] = linear_LSM(x,y)
 
[yHat_model2, betaHat_model2] = linear_two_points(data)

[resid_model1,   resid_model2] = statistical_eval(y, yHat_model1, yHat_model2, betaHat_model1, betaHat_model2);

plotting_data_models(data,x,y, yHat_model1, yHat_model2)

plotting_residuals(x,resid_model1, resid_model2)

