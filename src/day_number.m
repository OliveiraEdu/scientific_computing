function [n] = day_number(day, x);

m=[0 31 59 90 120 151 181 212 243 273 304 334]; 
n=m(x)+day %this step evaluate the day sequence number in the year 