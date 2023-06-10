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
## Transforma a matriz e o vetor independente em reais para ser resolvido
## @deftypefn {} {[@var{A}, @var{b] =} sol_imag_sistem (@var{A}, @var{b})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-10

function [A, b] = sol_imag_sistem (A, b)
  A = [real(A) -imag(A); imag(A) real(A)];
  b = [real(b);imag(b)];
endfunction
