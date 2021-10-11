%Evaluates the models in relation to MAPE, MSE and RSQ

function [resid_model1,   resid_model2] = statistical_eval(y, yHat_model1, yHat_model2, betaHat_model1, betaHat_model2);
  fprintf('----------------- Statistical Evaluation of the Models -----------------\n')
  
  % To see how good the fit is, evaluate the polynomial at the data points and generate a table showing the data, fit, and error.
  % Also known as Forecast Error
  resid_model1 = y-yHat_model1;
  resid_model2 = y-yHat_model2;

  % Square the residuals and total them to obtain the residual sum of squares:
  SSresid_model1 = sum(resid_model1.^2);
  SSresid_model2 = sum(resid_model2.^2);

  %MAPE
  pre_MAPE_model1 = abs((yHat_model1-y)./y);
  MAPE_model1 = mean(pre_MAPE_model1(isfinite(pre_MAPE_model1)))

  pre_MAPE_model2 = abs((yHat_model2-y)./y);
  MAPE_model2 = mean(pre_MAPE_model2(isfinite(pre_MAPE_model2)))

  % Squared Error
  sqr_error_model1 = resid_model1.^2;
  sqr_error_model2 = resid_model2.^2;

  % Mean Squared Error
  MSE_model1 = mean(sqr_error_model1);
  MSE_model2 = mean(sqr_error_model2);

  % RMSE - Root Mean Squared Error
  RMSE_model1 = sqrt(MSE_model1)
  RMSE_model2 = sqrt(MSE_model2)

  % Compute the total sum of squares of y by multiplying the variance of y by the number of observations minus 1:
  SStotal_model1 = (length(y)-1) * var(y);
  SStotal_model2 = (length(y)-1) * var(y);

  % Compute R2 using the formula given in the introduction of this topic:
  % For linear regression only
  rsq_model1 = 1 - SSresid_model1/SStotal_model1
  rsq_model2 = 1 - SSresid_model2/SStotal_model2

  % Computing Adjusted R2 for Polynomial Regressions
  % Usually the adjusted R2 is smaller than simple R2. It provides a more reliable estimate of the power of your polynomial model to predict.
  %rsq_adj_model1 = 1 - rsq_model1 * (length(y)-1)/(length(y)-length(betaHat_model1))
  %rsq_adj_model2 = 1 - rsq_model2 * (length(y)-1)/(length(y)-length(betaHat_model2))
endfunction