clear
clc
# a)

format short
valor = (sqrt(5) + 3)/0.3541;
fprintf("%.4f\n", valor);
erro = (14.7870 - valor)/14.7870

# b)

format bank
valor = (e^3+log(5))/(sin(3)+tan(0.5));
fprintf("%.3f\n", valor);
erro = (31.560 - valor)/31.560

# c)

format bank
valor = log(5)/log(3);
fprintf("%.2f\n", valor);
erro = (1.46 - valor)/1.46

# d)

format short
valor = (3.16)^(1/3);
fprintf("%.1f\n", valor);
erro = (1.5 - valor)/1.5

