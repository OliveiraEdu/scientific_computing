function x=gera_linear( mat1)

  %data converted to log
  mat2 = log(mat1)

  t = ones(1,length(mat1)).'
  x = [t mat1(:,1)]
  y = mat1(:,2)

  step1 = x.'*x

  %Evaluates the angular coefficient
  m = (mat2(7,2)-mat2(2,2))/(mat2(7,1)-mat2(2,1))

  %Evaluates the intercept
  n =mat2(7,1)*-m+mat2(7,2)


  %Sums of products between each independente variabile in turn and the dependent variable
  step2 = x.'*y
  step3 = (x.'*x)^-1

  %Normal Equation
  betaHat = (x.'*x)^-1*(x.'*y)

  z = betaHat(1,1)+betaHat(2,1)*x


  %Evaluates model 2 for predicted values (Heinz 1.8)
  %gs = 1.3291E20
  gs = 0.1324

  c = (((4*pi.^2)*x(:,2).^3)/gs).^0.5

  %Evaluates model 3 for predicted values (Heinz 1.7)
  %tp = 17.2705*x(:,2).^1.4996
  %tp = 0.149593 * x(:,2).^0.6668444918644971

  %tp1 = log(tp)

  tp1 = exp(n)*mat2(:,1).^m

  x1 = log(x(:,2))


  %Residual

  yHat = x*betaHat

  p = (x*(x.'*x)^-1*x.')

  yHat = p*y

  %Symmetric matrix

  simmMatrix = p.'

  %Idempotent matrix
  idempMatrix = p*p

  %residual vector
  e = y - yHat

  e = y - p*y

  %Evaluates residuals of model 2 (Heinz 1.4)
  e1 = (y - c)/c

  %e1 = (y - c(:,2))


end
