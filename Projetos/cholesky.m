## Copyright (C) 2023 Diego
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
## Objetivo: Fazer a decomposicao LL^T de uma matriz A
## @deftypefn {} {[@var{A}, @var{Det}, @var{CondErro}] =} cholesky (@var{n}, @var{A})
##
## @seealso{}
## @end deftypefn

## Author: Diego
## Created: 2023-05-23

function [A, Det, CondErro] = cholesky (n, A)
  CondErro = 0;
  Det = 1;
  for j = 1 : n
    Soma = 0;
    for k = 1 : j-1;
      Soma = Soma + A(j,k)^2;
    endfor
    t = A(j,j) - Soma;
    if t > 0
      A(j,j) = sqrt(t);
      r = 1/A(j,j);
      Det = Det * t;
    else
      CondErro = 1;
      error("a matriz nao e definida positiva");
    endif
    for i = j+1 : n
      Soma = 0;
      for k = 1 : j-1
        Soma = Soma + (A(i,k) * A(j,k));
      endfor
      A(i,j) = (A(i,j) - Soma) * r;
    endfor
  endfor
endfunction
