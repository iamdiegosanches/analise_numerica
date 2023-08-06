## Copyright (C) 2023 Diego Sanches
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {[@var{b}, @var{r2}, @var{s2}, @var{AICc}, @var{Info}] =}
## regressao_linear_dvs (@var{n}, @var{v}, @var{p}, @var{ii}, @var{x}, @var{y})
## entradas:
## numero de pontos, numero de variaveis explicativas, numero de parametros do modelo
## indicacao de intersecao, variaveis explicativas originais e variaveis respostas.
## saidas:
## estimadores dos parametros, coef. determinacao, quad. medio residual, cr. inf. Akaike
## e informacao sobre erro, sendo Info = 0: sem erro, Info = 1: p < v, Info = 2:[
## (ii != 1 e ii != 0), Info = 3: modelo nao permitido (v!=1 ou v > p) e (v <= 1 ou v+ii != p)
## e Info = 4: matriz das variaveis explicativas nao e de posto completo.
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-05

function [b, r2, s2, AICc, Info] = regressao_linear_dvs (n, v, p, ii, x, y)
  [MatX, Info] = matriz_explicativas(n, v, p, ii, x);
  if Info ~= 0
    return;
  endif
  Epsilon = precisao_maquina; # ver o algoritmo do Exercicio 1.41
  # chamada da rotina para decomposicao em valores singulares refuzida
  [U, Sigma, V] = svd(MatX);
  if Sigma(p,p) < n*Epsilon
    Info = 4;
    return;
  endif
  # calculo do vetor auxiliar
  for i = 1 : p
    Soma = 0;
    for j = 1 : n
      Soma = Soma + U(j,i)*y(j);
    endfor
    c(i) = Soma/Sigma(i,i);
  endfor
  # estimadores de quadrados minimos dos parametros da equacao de regressao
  for i = 1 : p
    Soma = 0;
    for j = 1 : p
      Soma = Soma + V(i,j)*c(j);
    endfor
    b(i) = Soma;
  endfor
  Info = 0;
  S = 0;
  Sy = 0;
  Sy2 = 0;
  for i = 1 : n
    u = 0;
    for j = 1 : p
      u = u + MatX(i,j)*b(j);
    endfor
    S = S + (y(i) - u)^2;
    Sy = Sy + y(i);
    Sy2 = Sy2 + y(i)^2;
  endfor
  # coeficiente de determinacao
  if ii == 1
    r2 = 1 - S/(Sy2 - (Sy^2)/n);
  else
    r2 = 1 - S/Sy2;
  endif
  s2 = S/(n-p); # quadrado medio residual
  AICc = n * log(S/n) + 2*p*n/(n-p-1); # criterio de informacao de Akaike
endfunction

