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
## @deftypefn {} {[@var{Yinter}, @var{MatrizCoef}, @var{Conderro}] =} interpolacao_polinomial (@var{x}, @var{y}, @var{ValInter})
## Entradas:
## vetor das abscissas, vetor das ordenadas, valor a interpolar
## Saida:
## Valor interpolado, matriz dos coeficientes
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-08

function [Yinter, coef, Conderro] = interpolacao_polinomial(x, y, ValInter)
  if length(x) ~= length(y)
    return;
  endif
  if length(x) < 2
    disp('pelo menos dois pontos sao necessarios para a interpolacao.');
    return;
  endif
  if ValInter < min(x) || ValInter > max(x)
    disp('O valor de interpolacao esta fora do intervalo dos dados.');
    return;
  endif

  if length(x) == 2
    tipo_interp = 1;
  elseif length(x) == 3
    tipo_interp = 2;
  else
    disp('vetor de pontos maior que 3');
    return;
  endif

  if tipo_interp == 1
    a1 = (y(2)-y(1))/(x(2)-x(1));
    a0 = y(1) - a1*x(1);
    coef = [a0 a1];
    Yinter = a0 + a1*ValInter;
    erro = abs(Yinter - ValInter);
    if erro ~= 0
      Conderro = abs(erro / ValInter);
    end
  elseif tipo_interp == 2
    A = [1 x(1) x(1)^2; 1 x(2) x(2)^2; 1 x(3) x(3)^2];
    b = [y(1);y(2);y(3)];
    coef = sol_decomp_LU(A, b);
    Yinter = coef(1) + coef(2)*ValInter + coef(3)*ValInter^2;
    erro = abs(Yinter - ValInter);
    if erro ~= 0
      Conderro = abs(erro / ValInter);
    end
  endif
endfunction

