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
## @deftypefn {} {[@var{Integral}, @var{Info}] =} newton_cotes (@var{a}, @var{b}, @var{n}, @var{m})
##
## Objetivo: Integrar uma função pela fórmula de Newton-Cotes
## Entrada:
##      a: limite inferior
##      b: limite superior
##      n: grau do polinômio
##      m: numero de subintervalos
## Saída:
##      Integral: valor da integral
##      Info: Informacao sobre consistencia, sendo:
##             Info = 0 -> sem erro
##             Info = -1 -> n<1 ou n>10
##             Info = -10 -> resto(m,n)~=0 ou m<0
##             Info = -11 -> ambas as condicoes ocorreram
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-24

function [Integral, Info] = newton_cotes (a, b, n, m)
  Integral = 0;
  Info = 0;
  # Coeficientes de Cotes
  [d,c,Info] = coeficientes_cotes(n);
  # consistencia dos parametros
  if resto(m,n)~=0 || m<0
    Info = Info - 10;
  endif
  if Info~=0
    return;
  endif
  # calculo da integral
  h = (b-a)/m;
  j = 0;
  for i = 0 : m
    x = a + i*h;
    y = f(x);
    j = j + 1;
    k = c(j);
    if resto(i,n) == 0 && i~=0 && i~=m
      k = k + k;
      j = 1;
    endif
    Integral = Integral + y*k;
  endfor
  Integral = n*h/d*Integral;
  xintervalo=linspace(a,b,100);
  plot(xintervalo,f(xintervalo),'r',x1,y1,'-bo')
endfunction
