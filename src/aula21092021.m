clc;
clear all;
close all;

t = 1:100

y1 = sind(2*pi*t)

y2 = cosd(2*pi*t)

y3 = y1 + y2

plot (t, y1)

hold 

plot (t, y2)

plot (t, y3)

hold

 