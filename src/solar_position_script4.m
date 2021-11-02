clear all; %clc;

%day =  [1:365]' %day of the year

%hsa =  [0:0.1677:24] %hour of the day

day = 286
hour = [16 35]

LAT = -27.647303 %location's latitude

sin_declination = -(0.39779*cosd(0.98565*(day+10)+1.9114*sind(0.98565.*(day-2)))) 

declination = asind(sin_declination) %solar declination angle


%title ('Solar Declination vs. Day of Year')
%xlabel('day of year (1-365)')
%ylabel('solar declination in degrees')
%grid

%ate aqui ok

hsa = hour(:,1) + hour(:,2)/60 %hour solar angle

sin_elevation = sind(declination)*sind(LAT)+ cosd(declination)*cosd(LAT).*cosd(hsa) 

elevation = asind(sin_elevation) %solar elevation angle

cos_azimut = -((sind(elevation)*sind(LAT)-sin_declination)/cosd(elevation)*cosd(LAT))

azimut = acosd(cos_azimut) %solar azimut



%cos(phi-180) = sin(180) sin(phi) + cos(180) cos(phi)
%sin 180 = 0
%cos 180 =-1
%cos(phi-180) = -cos(phi)

