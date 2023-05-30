## Copyright (C) 2023 Diego Sanches Nere dos Santos
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
## Objetivo: Resolver o sistema triangula inferior Ly = Pb pelas substituicoes sucessivas
## com a matriz L obtida de decomposicao LU com pivotacao parcial
## @deftypefn {} {@var{y} =} subst_sucess_pivotal (@var{n}, @var{L}, @var{b}, @var{Pivot})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches Nere dos Santos
## Created: 2023-05-23

function y = subst_sucess_pivotal (n, L, b, Pivot)
  k = Pivot(1);
  y(1) = b(k);
  for i = 2 : n
    Soma = 0;
    for j = 1 : i-1
      Soma = Soma + L(i,j) * y(j);
    endfor
    k = Pivot(i);
    y(i) = b(k) - Soma;
  endfor
endfunction
