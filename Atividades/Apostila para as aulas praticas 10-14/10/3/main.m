clear
clc

f = @(x)(-3*x.^3 + 1.5*x.^2 + 5);
I1 = integral(f,-1,2) # valor analitico
[Integral1] = newton_cotes(-1, 2, 3, 18, f)

f = @(x)((4*x.^2)./(exp(5*x)));
I2 = integral(f,-0.5,0.5)
[Integral2] = newton_cotes(-0.5, 0.5, 5, 30, f)

f = @(x)(x.^(-1)).*20.*sin(2*x);
I3 = integral(f,1,7)
[Integral3] = newton_cotes(1, 7, 7, 21, f)

disp('A regra se mostrou consistente');
