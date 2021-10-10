function curve_fitting(y, yHat, y_hat, betaHat, beta_Hat)
  %To see how good the fit is, evaluate the polynomial at the data points and generate a table showing the data, fit, and error.
  %Also known as Forecast Error
  resid1 = y-yHat;
  resid2 = y-y_hat;

  %Square the residuals and total them to obtain the residual sum of squares:
  SSresid1 = sum(resid1.^2);
  SSresid2 = sum(resid2.^2);

  %MAPE
  pre_MAPE1 = abs((yHat-y)./y);
  MAPE1 = mean(pre_MAPE1(isfinite(pre_MAPE1)))

  pre_MAPE2 = abs((y_hat-y)./y);
  MAPE2 = mean(pre_MAPE2(isfinite(pre_MAPE2)))

  % Squared Error
  sqr_error1 = resid1.^2;
  sqr_error2 = resid2.^2;

  % Mean Squared Error
  MSE1 = mean(sqr_error1);
  MSE2 = mean(sqr_error2);

  %RMSE - Root Mean Squared Error
  RMSE1 = sqrt(MSE1)
  RMSE2 = sqrt(MSE2)

  %Compute the total sum of squares of y by multiplying the variance of y by the number of observations minus 1:
  SStotal1 = (length(y)-1) * var(y);
  SStotal2 = (length(y)-1) * var(y);

  %Compute R2 using the formula given in the introduction of this topic:
  %For linear regression only
  rsq1 = 1 - SSresid1/SStotal1
  rsq2 = 1 - SSresid2/SStotal2

  %Computing Adjusted R2 for Polynomial Regressions
  %Usually the adjusted R2 is smaller than simple R2. It provides a more reliable estimate of the power of your polynomial model to predict.
  rsq_adj1 = 1 - rsq1 * (length(y)-1)/(length(y)-length(betaHat'))
  rsq_adj2 = 1 - rsq2 * (length(y)-1)/(length(y)-length(beta_Hat))
endfunction