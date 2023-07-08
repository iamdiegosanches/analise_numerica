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
## @deftypefn {} {[@var{MatX}, @var{Info}] =} matriz_explicativas (@var{n}, @var{v}, @var{p}, @var{ii}, @var{x})
## Entradas:
## numero de pontos, numero de variaveis explicativas, numero de paramentros do modelo,
## indicacao de intersecao e submatriz com variaveis explicativas originais.
## Saida:
## Matriz das variaveis explicativas e informacao sobre erro, sendo Info = 0: sem erro,
## Info = 1: p < v, Info = 2: (ii != 1 e ii != 0) e Info = 3: modelo nao permitido,
## ou seja, (v != 1 ou v > p) e (v <= 1 ou v + ii != p).
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-05

function [MatX, Info] = matriz_explicativas (n, v, p, ii, x)
  if p < v
    Info = 1;
    return;
  endif
  if ii ~= 1 && ii ~= 0
    Info = 2;
    return;
  endif
  if (v ~= 1 || v > p) && (v <= 1 || (v + ii) ~= p)
    Info = 3;
    MatX = 0;
    return;
  endif
  Info = 0;
  if v == 1 # regressao polinomial
    if ii ~= 0 # modelo com intersecao
      for i = 1 : n
        MatX(i, 1) = 1;
      endfor
    else # modelo sem intersecao
      for i = 1 : n
        MatX(i, 1) = x(i, 1);
      endfor
    endif
    # Completa a matriz MatX com potencias do vetor coluna x(i,1)
    for j = 2 : p
      j1 = j - 1;
      for i = 1 : n
        MatX(i, j) = MatX(i, j1)*x(i,1);
      endfor
    endfor
  else # regressao linear multipla
    if ii ~= 0
      for i = 1 : n
        MatX(i,1) = 1;
      endfor
    endif
    # copia a submatriz x na matrix MatX
    m = 0;
    for j = ii+1 : p
      m = m+1;
      for i = 1 : n
        MatX(i, j) = x(i, m);
      endfor
    endfor
  endif
endfunction




