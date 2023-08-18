clear
clc


f1 = @(x,y)(-(x.^2).*y+5*x);
f2 = @(x,y)(-2*(x.^2).*y+(e.^(x+y)));
f3 = @(x,y)(cos(x+y));i3=[(pi/2) (pi)];j3=[(pi/4) (pi/2)];


[f1_1,info] = newton_cotes_dupla_composta (2, 3, 1,1, 0, 2, 1, 1, f1)
[f1_2,info] = newton_cotes_dupla_composta (2, 3, 2,2, 0, 2, 2, 2, f1)
[f1_3,info] = newton_cotes_dupla_composta (2, 3, 3,3, 0, 2, 3, 3, f1)

[f2_3,info] = newton_cotes_dupla_composta (10, 11.5, 3, 3, 5, 8, 3, 3, f2)
[f2_4,info] = newton_cotes_dupla_composta (10, 11.5, 4, 4, 5, 8, 4, 4, f2)
[f2_5,info] = newton_cotes_dupla_composta (10, 11.5, 5, 5, 5, 8, 5, 5, f2)

[f3_1,info] = newton_cotes_dupla_composta ((pi/2), (pi), 1, 1, (pi/4), (pi/2), 1, 1, f3)
[f3_2,info] = newton_cotes_dupla_composta ((pi/2), (pi), 2, 2, (pi/4), (pi/2), 2, 2, f3)
[f3_3,info] = newton_cotes_dupla_composta ((pi/2), (pi), 3, 3, (pi/4), (pi/2), 3, 3, f3)

