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
## Objetivo: Resolver o sistema trinagular inferior Lx = c
## po substituicoes sucessivas
## @deftypefn {} {@var{x} =} subst_sucess (@var{L}, @var{c})
## L -> Matriz dos coeficientes triangular inferior
## c -> Vetor de termos independes
## x -> Vetor solucao do sistema triangular
## @seealso{}
## @end deftypefn

## Author: Diego
## Created: 2023-05-20

function x = subst_sucess (L, c)
  if size(L, 1) == size(L, 2) && size(c, 1) == size(L, 1)
    resultado = 1;
    for i = 1 : size(L ,1)
      for j = i+1 : size(L, 1)
        if L(i, j) ~= 0
          resultado = 0;
        endif
      endfor
    endfor
    if resultado == 1
      n = size(L, 1);
      x(1) = c(1) / L(1, 1);
      for i = 2 : n
        soma = 0;
        for j = 1 : i-1
          soma = soma + (L(i, j) * x(j));
        endfor
        x(i) = (c(i) - soma) / L(i, i);
      endfor
    else
      printf('A matriz L não é triangular inferior.');
    endif
  else
    printf('As dimensões da matriz L ou vetor c são inválidas.');
  endif
endfunction
