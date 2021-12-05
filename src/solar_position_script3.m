clear all; clc;

day = 20 %day of the year

hour =  [1 30] %hour of the day

LAT = -27 %location's latitude

sin_delta = -(0.39779*cosd(0.98565*(day+10))+(1.9114*sind(0.98565*(day-2))))

delta = asind(sin_delta) %solar declination angle

hsa = hour(:,1) + hour(:,2)/60 %hour solar angle

sin_alpha = (sin_delta.*sind(LAT))+ (cosd(delta).*cosd(LAT).*cosd(hsa)) 

alpha = asind(sin_alpha) %solar elevation angle

cos_azi = (sin_alpha.*sind(LAT)-sin_delta)/(cosd(alpha).*cosd(LAT)) 

azi = acosd(cos_azi) %solar azimute

