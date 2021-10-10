function [beta_Hat, y_hat] = linear_two_points(data)

  l = length(data);
  o = l-1
  p = l-o

  %Evaluates the angular coefficient
  m = (data(l,2)-data(p,2))/(data(l,1)-data(p,1))

  %Evaluates the intercept
  n =data(l,1)*-m+data(l,2)

  beta_Hat = [m n]

  y_hat = m*data(:,1)+n

  %Evaluates residuals of model 2 (Heinz 1.4)
  e1 = (data(:,2)- y_hat)/y_hat

  e1 = data(:,2)- y_hat

  plot(data(:,1), y_hat)

end
