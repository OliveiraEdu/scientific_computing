clear all; %clc;

%day =  [1:365]' %day of the year

day = 286
hour = [16 35]


%hsa =  [0:0.1677:24] %hour of the day

hsa = hour(:,1) + hour(:,2)/60 %hour solar angle

LAT =  -27.647303 %location's latitude

%Tidwell & Weir, 2016

delta = 23.45 * sind((360*(284+day))/365)

%plot (day, delta)

%Goswami, 2015

sin_alpha = sind(LAT) * sind(delta) + cosd(LAT)*cosd(delta) %altitude solar

alpha = asind(sin_alpha)

sin_a =  (cosd(delta) * sind(hsa)) / cosd(alpha) %azimute solar

a = asind(sin_a)

