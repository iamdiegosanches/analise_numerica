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
## @deftypefn {} {[@var{integ}, @var{Info}] =} gauss_legendre (@var{a}, @var{b}, @var{n}, @var{f})
## Entradas:
## a = limite inferior
## b = limite superior de integracao
## n = numero de pontos (n>=1)
## Saidas:
## integ: valor da integral
## Info = informacao sobre consistencia e convergencia
## Info = -1 -> n<1
## Info = 0 -> sem erro
## Info = k: k zeros nao convergiram
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-24

function [Integ, Info] = gauss_legendre (a, b, n, f)
  # calculo das abscissas e pesos
  [T, W, Info] = gauss_legendre_abspes(n);
  if Info ~= 0 # n < 1 ou zeros nao convergiram
    return;
  endif
  # calculo da integral
  Integ = 0;
  Info = 0;
  ba2 = (b-a)/2;
  for i = 1 : n
    x = a + ba2 * (T(i)+1);
    y = f(x); # avaliar a funcao integrando em x
    Integ = Integ + y * W(i);
  endfor
  Integ = ba2 * Integ;
endfunction
