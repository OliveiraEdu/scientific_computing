%Two points linear aproximation
%based on Heinz, Chapter 1

function [yHat_model2, betaHat_model2] = linear_two_points(data);
  fprintf('----------------- Two Points Model -----------------\n')
  
  %Picks the second and the last points of x, f(x)
  l = length(data);
  o = l-1;
  p = l-o;

  %Evaluates the angular coefficient
  m = (data(l,2)-data(p,2))/(data(l,1)-data(p,1));

  %Evaluates the intercept
  n =data(l,1)*-m+data(l,2);

  betaHat_model2 = [m n];

  yHat_model2 = m*data(:,1)+n;

  %Evaluates residuals of model 2 (Heinz 1.4)
  %e1 = (data(:,2)- yHat_model2)/yHat_model2

  %e1 = data(:,2)- yHat_model2

endfunction
