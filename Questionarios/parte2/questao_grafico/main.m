clear

x = [0 10 20];
y = [0 6 4];

c = coeficientes_polinomio (length(x)-1, x, y);
fprintf('polinomio: %.2f + %.2f*x + %.2f*x^2 \n', c(1), c(2), c(3));

fi = atan(c(2))

a = -(9.8)/(2*c(3)*(cos(fi)^2));
v0 = sqrt(a)
