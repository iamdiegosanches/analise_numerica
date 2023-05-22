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
## @deftypefn {} {[@var{A}, @val{b}] =} eliminacao_gauss (@var{A}, @var{b})
## Função utilizada para determinar a matriz dos coeficientes escalonada
## Entrada:
##     A -> Matriz dos coeficientes
##     b -> Vetor de termos independentes
##     n -> Ordem do sistema
## Saida:
##     A -> Matriz dos coeficientes escalonada
##     b -> Vetor de termos independentes ajustados
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-05-21

function [A, b] = eliminacao_gauss (A, b)
  n = size(A, 1);
  for j = 1 : n
    for i = j+1 : n
      m(i,j) = A(i,j)/A(j,j);
      for k = 1 : n
        A(i,k) = -m(i,j)*A(j,k) + A(i,k);
      endfor
      b(i) = -m(i,j)*b(j) + b(i);
    endfor
  endfor
endfunction
