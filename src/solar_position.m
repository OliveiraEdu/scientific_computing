function solar_position (day, hour, LAT)

%day = 10  %day of the year

%hour = [12 30] %hour of the day

%LAT = 27 %location's latitude in degrees

sol_decl = -(0.39779*cosd(0.98565*(day+10))+(1.911*sind(0.98565*(day-2)))) 

delta = asind(sol_decl) %solar declination angle

hsa = hour(:,1) + hour(:,2)/60 %hourly solar angle, converts hour and minute of the day to decimal notation

sea = sol_decl*sind(LAT) + cosd(delta)*cosd(LAT)*cosd(hsa) 

alpha = asind(sea) %solar elevation angle

cos_azi = (sea*sind(LAT)-sol_decl)/(cosd(alpha)*cosd(LAT)) %solar azimute

azi = acosd(cos_azi)

endfunction
