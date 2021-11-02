clear all;

%day = 10 %day of the year

%hour =  [1 30] %hour of the day

day = [1:365]' %day of the year

hsa =  [0:0.1667:24] %hour of the day

LAT = -27.6451741 %location's latitude

f = 360*day/365

%delta =  0.3964 + 3.631*sind(f) - 22.97*cosd(f) + 0.03838 * sind(2*f) - 0.3885 * cosd(2*f) + 0.07659 * sind(3*f) - 0.1587*cosd(3*f) - 0.01021 * cosd(4*f) 

delta_rad = 0.409*sin((2*pi*day/365)-1.39)
delta = rad2deg(delta_rad)

%hsa = hour(:,1) + hour(:,2)/60 %hourly solar angle, converts hour and minute of the day to decimal notation

cos_zenite = sind(LAT) * sind(delta) + cosd(LAT)*cosd(delta)*cosd(hsa)

zenite = acosd(cos_zenite) %solar azimute

sin_elevation = cosd(delta)*sind(hsa)/sind(zenite)

elevation = asind(sin_elevation) %solar elevation angle

