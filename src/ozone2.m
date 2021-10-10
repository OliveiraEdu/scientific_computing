close all;clear all;clc;

data = csvread('/home/eduardo/Documents/repo/matlab/EDO/datasets/ozone.csv')

[t,x,y] = f2(data)

[yHat] = linear_MMQ2(x,y)
 
[y_hat] = linear_two_points2(data)
 
plotting(data,x,y,yHat,y_hat)