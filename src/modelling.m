close all;clear all;clc;

%data = csvread('/home/eduardo/Documents/repo/matlab/EDO/datasets/ozone.csv')
data = csvread('/home/eduardo/Documents/repo/matlab/EDO/datasets/energy_consumption.csv')
%data = csvread('/home/eduardo/Documents/repo/matlab/EDO/datasets/vehicular_stopping.csv')

[t,x,y] = read_prepare_data(data);

[yHat_model1, betaHat_model1] = linear_MMQ2(x,y)
 
[yHat_model2, betaHat_model2] = linear_two_points2(data)

[resid_model1,   resid_model2] = statistical_eval(y, yHat_model1, yHat_model2, betaHat_model1, betaHat_model2);

plotting_data_models(data,x,y, yHat_model1, yHat_model2)

plotting_residuals(x,resid_model1, resid_model2)

