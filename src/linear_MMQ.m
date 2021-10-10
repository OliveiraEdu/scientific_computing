%Based on Rawlings Chapter 3

function [yHat] = linear_MMQ(x,y)

  step1 = x.'*x;

  %Sums of products between each independente variabile in turn and the dependent variable
  step2 = x.'*y;
  step3 = (x.'*x)^-1;
  step3 = step1^-1;

  %Normal Equation

  betaHat = step3*step2;
  %Residual

  yHat = x*betaHat;

  p = (x*step3*x');

  yHat = p*y

  %Symmetric matrix

  simmMatrix = p';

  %Idempotent matrix
  idempMatrix = p*p;

  hold
  plot(x(:,2), yHat)

  endfunction
