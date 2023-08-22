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
## @deftypefn {} {@var{retval} =} abm4 (@var{input1}, @var{input2})
## Objetivo: Resolver PVI pelo metodo de Adams-Bashforth-Moulton de ordem 4
## Entrada: Limite inferior, limite superior, valor inicial e numero de subintervalos
## saida: abscissas, solucao do PVI e erros
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-08

function [VetX, VetY, Erro] = abm4 (a, b, y0, m, f)
  nc = 3; # numero de correcoes
  h = (b - a)/m;
  # metodo Dormand-Prince (5, 4) para calcular y1, y2, e y3
  [VetX, VetY, Erro] = dp54(a, a+3*h,y0,3,f);
  # calculo de f0, f1, f2 e f3
  x = VetX(1);
  y = VetY(1);
  f0 = f(x,y);
  x = VetX(2);
  y = VetY(2);
  f1 = f(x,y);
  x = VetX(3);
  y = VetY(3);
  f2 = f(x,y);
  x = VetX(4);
  y = VetY(4);
  f3 = f(x,y);
  for i = 4 : m
    x = a+i*h;
    VetX(i+1) = x;
    Ypre = VetY(i) + h*(55*f3 - 59*f2 + 37*f1 - 9*f0)/24;
    y = Ypre;
    f4 = f(x,y);
    # calculo das nc correcoes
    for j = 1 : nc
      Ycor = VetY(i) + h*(9*f4 + 19*f3 - 5*f2 + f1)/f4;
      y = Ycor;
      f4 = f(x,y);
    endfor
    VetY(i+1) = Ycor;
    Erro(i+1) = abs(Ycor - Ypre)*19/270;
    f0 = f1;
    f1 = f2;
    f2 = f3;
    f3 = f4;
  endfor
endfunction
