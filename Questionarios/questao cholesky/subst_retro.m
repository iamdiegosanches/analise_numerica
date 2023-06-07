## Copyright (C) 2023 dgsan
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
## Objetivo Resolver o sistema triangular superior Ux = d
## por substituições retroativas
## @deftypefn {} {@var{x} =} subst_retro (@var{U}, @val{d})
##
## @seealso{}
## @end deftypefn

## Author: Diego
## Created: 2023-05-17

function x = subst_retro(U, d)
  if size(U, 1) == size(U, 2) && size(d, 1) == size(U, 1)
    resultado = 1;
    for i = 1:size(U, 1)
      for j = 1:size(U, 1)
        if i > j && U(i, j) ~= 0
          resultado = 0;
        endif
      endfor
    endfor
    if resultado == 1
      n = size(U, 1);
      x(n) = d(n) / U(n, n);
      for i = n-1:-1:1
        soma = 0;
        for j = i+1:n
          soma = soma + U(i, j) * x(j);
        endfor
        x(i) = (d(i) - soma) / U(i, i);
      endfor
    else
      printf('A matriz U não é triangular superior.');
    endif
  else
    printf('As dimensões da matriz U ou vetor d são inválidas.');
  endif
endfunction

