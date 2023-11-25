clear
clc

f1=@(x)(25*(x.^2)+3*x-4);
f2=@(x)((x.^5)+3*(x.^4)-4*(x.^3)-8*(x.^2)+2*x-10);

lim1=[-2 0];
lim2=[-2 0];

[R1,I1,info1] = bissecao (-2, 0,10^-3,100,f1)
[R2,I2,info2] = bissecao (-2, 0,10^-3,100,f2)


