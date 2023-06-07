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
## @deftypefn {} {@var{sequencia} =} fibonacci (@var{n}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches Nere dos Santos
## Created: 2023-06-05

function sequencia = fibonacci (n)
  if n <= 0
    error('O numero deve ser inteiro positivo');
  endif
  sequencia = zeros(1,n);
  sequencia(1) = 0;
  sequencia(2) = 1;

  for i = 3:n
    sequencia(i) = sequencia(i-1) + sequencia(i-2);
  endfor
endfunction
