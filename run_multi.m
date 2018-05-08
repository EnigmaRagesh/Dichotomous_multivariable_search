clear all
close all
xinit = [1, 3];
a = 0;
b = 10;
d = [1,1];
eps = 0.001;
x1 = [0:1:10];
x2 = [0:1:10];
[X1,X2] = meshgrid(x1, x2);
f= 200 + (7*(X1-5).^2) + (3 * (X2 - 10).^2);
contourf(X1, X2, f)
hold on;
[f,y] = dichotomous_multi(xinit, a, b, d, eps)
plot(y(1), y(2), 'g+')
plot(xinit(1), xinit(2),'m*')



