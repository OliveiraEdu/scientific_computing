clear all;

c = clock()

d1 = day_number(21,06) %Winter solstice, southern hemisphere
d2 = day_number(20,3) %Autumn equinox, southern hemisphere
d3 = day_number(22,9) %Spring equinox, southern hemisphere
d4 = day_number(21,12) %Summer solstice, southern hemisphere
d5 = day_number(c(1,3),c(1,2)) %Today

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

plot(hod, alpha(d1,:), 'g','linewidth',2)
hold
plot(hod, alpha(d2,:), 'b','linewidth',2)
plot(hod, alpha(d3,:), 'b','linewidth',2)
plot(hod, alpha(d4,:), 'c','linewidth',2)
plot(hod, alpha(d5,:), 'm','linewidth',2)
ylim([0 90]);

legend('Solstício de inverno' ,'Equinócio de Outono','Equinócio de Primavera','Solstício de verão','Hoje' )

xlabel('Hora do dia');
ylabel('Elevação Solar (graus)');
title('Posição Solar');
grid
