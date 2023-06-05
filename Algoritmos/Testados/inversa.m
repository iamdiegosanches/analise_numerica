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
## Objetivo: Obter a inversa de uma matriz
## @deftypefn {} {@var{A} =} inversa (@var{A})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches Nere dos Santos
## Created: 2023-06-04

function A = inversa (A)
  # A*A^-1 = I
  # Verifica se a matriz é quadrada
  [rows, columns] = size(A);
  if rows ~= columns
      error("A matriz precisa ser quadrada.");
  end
  I = eye(size(A, 1));
  A = I/A;
endfunction
