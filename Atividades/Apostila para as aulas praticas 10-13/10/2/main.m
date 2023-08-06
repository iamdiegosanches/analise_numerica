clear
clc

# A
disp('');
disp('Letra A');
x = linspace(-1, 2, 1000);
f = @(x)-3*x.^3 + 1.5*x.^2 + 5;

[Integral, Info] = newton_cotes(-1, 2, 1, 18, f)
[Integral, Info] = newton_cotes(-1, 2, 2, 18, f)
[Integral, Info] = newton_cotes(-1, 2, 3, 18, f)

# Polinomio interpolador


# B
disp('');
disp('Letra B');

x = linspace(-0.5, 0.5, 1000);
f = @(x)(4*x.^2)/(e.^(5*x));

[Integral, Info] = newton_cotes(-0.5, 0.5, 3, 30, f)
[Integral, Info] = newton_cotes(-0.5, 0.5, 4, 32, f)
[Integral, Info] = newton_cotes(-0.5, 0.5, 5, 30, f)

# Polinomio interpolador

# C
disp('');
disp('Letra C');

x = linspace(1, 7, 1000);
f = @(x)(x.^(-1))*20.*sin(2*x);

[Integral, Info] = newton_cotes(1, 7, 1, 15, f)
[Integral, Info] = newton_cotes(1, 7, 2, 14, f)
[Integral, Info] = newton_cotes(1, 7, 3, 15, f)

