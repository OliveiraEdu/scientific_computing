%==========================================================================
% Source Code Filename in the supplementary CD:
% A04_SolarCoordinates.m
%==========================================================================
clearvars; clc;
Day=1; Month=10; Year=2018;
fl=40.736851; ll=22.920227;% Latitude and Longitude of Thessaloniki, Greece
ls=30; tLST=12;  % local standard meridian and local standard time
%==========================================================================
% Chech if the year is a leap year or not
if rem(Year,4)==0, K=1; else K=2; end    
%==========================================================================
% Calculation of the day number in the year
n=fix(275*Month/9)-K*fix((Month+9)/12)+Day-30;
%==========================================================================
% Convertion of the day number into rad
d=2*pi*(n-1)/365.242;
%==========================================================================
% Computation of the Equation of time
Et=0.01719+0.428146*cos(d)-7.352048*sin(d)-...
           3.349758*cos(2*d)-9.362591*sin(2*d);
%==========================================================================
% Calculation of the longitude correction
Dl=4*(ls-ll)/60;
%==========================================================================
% Calculation of the local solar time
tLSO=tLST+Dl+Et/60;
%==========================================================================
% Calculation of the solar hour angle Ã¹
SolarAngle_w=(12-tLSO)*pi/12;
% Show the calculated values of the solar hour angle Ã¹ in the Command Window
fprintf(1,'Solar hour angle: Ã¹=%3.1f hours\n',SolarAngle_w*12/pi);
%==========================================================================
% Calculation of the solar declination angle Ã¤
Declin=23.45*sin(2*pi*(284+n)/365)*pi/180;
% Show the calculated values of the solar declination angle Ã¤ in the Command Window
fprintf(1,'Solar declination angle: Ã¤=%3.1f degrees\n',Declin*180/pi);
%==========================================================================
% Calculation of the solar height angle h
h=asin(cos(Declin)*cos(SolarAngle_w)*cos(fl*pi/180)+sin(Declin)*sin(fl*pi/180));
% Show the calculated values of the solar height angle h in the Command Window
fprintf(1,'Solar height angle: h=%3.1f degrees\n',h*180/pi);
%==========================================================================
% Calculation of the solar zenith angle Ã¨z
zenith=90-h*180/pi;
% Show the calculated values of the solar zenith angle Ã¨z in the Command Window
fprintf(1,'Solar zenith angle: Ã¨z=%3.1f degrees\n',zenith);
%==========================================================================
% Calculation of the solar azimuth angle A
A=asin(cos(Declin)*sin(SolarAngle_w)/cos(h));
% Show the calculated values of the solar azimuth angle A in the Command Window
fprintf(1,'Solar azimuth angle: A=%3.1f degrees\n',A*180/pi);
%==========================================================================
