%Based on Rawlings Chapter 3

function [yHat_model1, betaHat_model1] = linear_MMQ2(x,y);
  fprintf('----------------- Least Squares Model -----------------\n')
  step1 = x.'*x;

  %Sums of products between each independente variabile in turn and the dependent variable
  step2 = x.'*y;
  step3 = (x.'*x)^-1;
  step3 = step1^-1;

  %Normal Equation

  betaHat_model1 = step3*step2;
  
  %Residual

  yHat_model1 = x*betaHat_model1;

  p = (x*step3*x');

  yHat_model1 = p*y;

  %Symmetric matrix

  simmMatrix = p';

  %Idempotent matrix
  idempMatrix = p*p;
endfunction
