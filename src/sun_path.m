clc; clear all;
clc
clear all
number_of_the_yearly_day = 1:1:365; 
T=1:1:24;
declination=23.45*sin((2*pi*(number_of_the_yearly_day-80))/(365));
latitude=31.963158; 
Zenith_angle=latitude-declination; 
tilt_angle=Zenith_angle;
altitude=1-Zenith_angle;  
w=15*(12-T);
[declination,w] = meshgrid(declination,w) ; 
X=asind(sin(declination).*sin(latitude)+cos(latitude).*cos(declination).*cos(w));
Y=acosd(sin(altitude).*sin(latitude)-sin(declination)./(cos(altitude).*cos(latitude)));
plot (X,Y)
ylim([-90 90]);
xlabel('Solar Azimuth (deg)');
ylabel('Solar Elevation (deg)');
title('Solar Azimuth and Elevation Angle');