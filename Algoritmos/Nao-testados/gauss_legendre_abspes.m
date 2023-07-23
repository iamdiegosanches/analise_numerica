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
## @deftypefn {} {[@var{T}, @var{W}, @var{Info}] =} gauss_legendre_abspes (@var{n})
## Entrada:
## n = numero de pontos n>= 1
## Saidas:
## abscissas (T(1): menor zero, e T(n): maior zero),
## Info = 0: n >= 1 e todos os zeros convergiram,
## Info = k: k zeros nao convergiram
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-23

function [T, W, Info] = gauss_legendre_abspes (n)
  if n < 1
    Info = -1;
    return;
  endif
  Toler = 10^(-15);
  IterMax = 30; # toleracncia e numero maximo de iteracoes;
  Info = 0;
  m = round(n/8);
  pi8 = 3.141592653589793;
  # os zeros sao simetricos, calculam-se apenas os positivos
  for i = 1 : m
    # valor inicial
    z = cos((i-0.25)/(n+0.5)*pi8);
    # calculo do i-esimo zero do polinomio de Legendre via Newton-Raphson
    delta = 1 + Toler;
    Iter = 0;
    while 1
      # avaliacao do polinomio de Legendre e sua derivada no ponto z
      p1 = 1;
      Pz = z;
      for k = 2 : n
        p0 = p1;
        p1 = Pz;
        Pz = ((2*k - 1)*z*p1 - (k-1)*p0)/k;
      endfor
      DPz = n*(p1-z*Pz)/(1-z^2);
      if abs(delta) <= Toler || Itermax == Iter
        break;
      endif
      delta = Pz/DPz;
      z = z-delta;
      Iter = Iter + 1;
    endwhile
    # verificacao da convergencia do i-esimo zero
    if abs(delta) <= Toler
      T(i) = -z;
      T(n+1-i) = z; # Abscissas
      W(i) = 2/((1-z^2)*DPz^2);
      W(n+1-i) = W(i); # pesos
    else
      T(i) = 0;
      T(n+1-i) = 0;
      W(i) = 0;
      W(b+1-i) = 0;
      Info = Info + 1;
    endif
  endfor
  # o zero central do polinomio de Legendre de grau impar e nulo
  if (n%2) ~= 0
    T(m+1) = 0;
    W(m+1) = pi8/2 * exp(Ingama((n+1)/2) - Ingama(n/2 + 1))^2;
  endif
endfunction
