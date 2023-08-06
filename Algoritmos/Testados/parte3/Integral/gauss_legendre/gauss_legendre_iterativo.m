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
## @deftypefn {} {[@var{Integral}, @var{Delta}, @var{Iter}, @var{Info}] =} gauss_legendre_iterativo (@var{a}, @var{b}, @var{Toler}, @var{IterMax})
## Objetivo: Integrar uma funcao via quadratura de Gauss-Legendre iterativa
## Entradas:
## limite inferior, limite superior, tolerancia e numero maximo de iteracoes
## Saidas:
## valor da integral, menor diferenca relativa obtida, numero de iteracoes e informacao sobre convergencia
## Info = 0: Delta <= Toler
## Info = 1: Dekta > Toler
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-24

function [Integral, Delta, Iter, Info] = gauss_legendre_iterativo (a, b, Toler, IterMax, f)
  Iter = 1;
  n1 = 5;
  n2 = 8;
  [Int, Info] = gauss_legendre(a, b, n2, f);
  # calculos sucessivos da integral
  while 1
    Iter = Iter + 1;
    n = n1 + n2;
    [Integral, Info] = gauss_legendre(a, b, n, f);
    if Integral ~= 0
      Delta = abs((Integral - Int)/Integral);
    else
      Delta = abs(Integral - Int);
    endif
    if Delta <= Toler || Iter == IterMax
      break;
    endif
    Int = Integral;
    n1 = n2;
    n2 = n;
  endwhile
  # teste de convergencia
  if Delta <= Toler
    Info = 0;
  else
    Info = 1;
  endif
endfunction
