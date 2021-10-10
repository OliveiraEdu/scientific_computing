clear all;clc;

n = 5

t = ones(1,n).'
u = (1:n).'
x = [t u]

%y = (2*x+1) 

%y = y(:,2)

#generates a random vector y of length x
y = rand(1,length(x)).'

step1 = x.'*x

%Sums of products between each independente variabile in turn and the dependent variable
step2 = x.'*y
step3 = (x.'*x)^-1

%Normal Equation
betaHat = (x.'*x)^-1*(x.'*y)

clf reset

%plot (x,y)
scatter(x(:,2),y)

hold on

z = betaHat(1,1)+betaHat(2,1)*x

plot(x,z)

hold

%legend("random data","model")

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
