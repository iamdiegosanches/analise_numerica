clear
clc

f1=@(x,y)(sqrt(x));
f2=@(x,y)((x.^2)+(y.^2));
f3=@(x,y)(x.*y);
%solucao do pvi por euler
printf("resolvendo as funcoes por dorman price\n");
for i=2:5
  printf("numero de subintervalos da funcao 1: %d\n",i);
  [VetX,VetY,DifY] = dp54 (0,2,0,i,f1)
endfor
for i=2:2:8
  printf("numero de subintervalos da funcao 2: %d\n",i);
  [VetX,VetY,DifY] = dp54 (1,2,0,i,f2)
endfor
for i=4:2:10
  printf("numero de subintervalos da funcao 3: %d\n",i);
  [VetX,VetY,DifY] = dp54 (0,0,1,i,f3)
endfor
printf("resolvendo as funcoes por adans\n");
for i=2:5
  printf("numero de subintervalos da funcao 1: %d\n",i);
  [VetX,VetY,Erro] = abm4 (0,2,0,i,f1)
endfor
for i=2:2:8
  printf("numero de subintervalos da funcao 2: %d\n",i);
  [VetX,VetY,Erro] = abm4 (1,2,0,i,f2)
endfor
for i=4:2:10
  printf("numero de subintervalos da funcao 3: %d\n",i);
  [VetX,VetY,Erro] = abm4 (0,0,1,i,f3)
endfor

# para a questao 14.6

f1 = @(x,y)((x.^2)+y);
f2 = @(x,y)(y.*(x-y));
f3 = @(x,y)(-2*x.*y);

a = 0;
b = 2;
y0 = 1;
[VetX, VetY] = dp54 (a, b, y0, 0.2, f1)
[VetX, VetY] = dp54 (a, b, y0, 0.4, f1)
[VetX, VetY] = dp54 (a, b, y0, 0.5, f1)

[VetX, VetY] = abm4 (a, b, y0, 0.2, f1)
[VetX, VetY] = abm4 (a, b, y0, 0.4, f1)
[VetX, VetY] = abm4 (a, b, y0, 0.5, f1)

a = 0;
b = 1.5;
y0 = 1
[VetX, VetY] = dp54 (a, b, y0, 0.15, f2)
[VetX, VetY] = dp54 (a, b, y0, 0.3, f2)
[VetX, VetY] = dp54 (a, b, y0, 0.5, f2)

[VetX, VetY] = abm4 (a, b, y0, 0.15, f2)
[VetX, VetY] = abm4 (a, b, y0, 0.3, f2)
[VetX, VetY] = abm4 (a, b, y0, 0.5, f2)

a = 0;
b = 0.5;
y0 = 1;
[VetX, VetY] = dp54 (a, b, y0, 0.1, f3)
[VetX, VetY] = dp54 (a, b, y0, 0.05, f3)

[VetX, VetY] = abm4 (a, b, y0, 0.1, f3)
[VetX, VetY] = abm4 (a, b, y0, 0.05, f3)
