clear all;

d1 = 151+21 %Winter solstice, southern hemisphere
d2 = 59 + 21 %Autumn/Spring equinox, southern hemisphere
d4 = 334 + 21 %Summer solstice, southern hemisphere

day = [1:365]' %day of the year

hod =  [0:1/6:24] %hour of the day

hsa = hod*15-180 %solar angle

LAT = -27.6451741 %location's latitude 

sin_delta = -(0.39779*cosd(0.98565*(day+10)+1.9114*sind(0.98565*(day-2)))) 

delta = asind(sin_delta) %solar declination angle

sin_alpha = sin_delta*sind(LAT)+cosd(delta)*cosd(LAT)*cosd(hsa)

alpha = asind(sin_alpha) %solar elevation

plot(day, delta, 'b','linewidth',2)
%ylim([0 90]);
xlabel('Dia do Ano');
ylabel('Declinação Solar (graus)');
title('Percurso Solar');
grid

figure

plot(hod, alpha(d1,:), 'r','linewidth',2)
hold
plot(hod, alpha(d2,:), 'g','linewidth',2)
%plot(hod, alpha(d3,:), 'o','linewidth',2)
plot(hod, alpha(d4,:), 'b','linewidth',2)
ylim([0 90]);

legend('Solstício de verão' ,'Equinócios','Solstício de inverno' )


xlabel('Hora do dia');
ylabel('Elevação Solar (graus)');
title('Posição Solar');
grid