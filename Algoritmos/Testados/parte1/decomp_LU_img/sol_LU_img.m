## Copyright (C) 2023 Alvaro
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
## @deftypefn {} {@var{x} =} sol_LU_img (@var{A}, @var{b})
##
# x = a  b  c  d  e  f
# Logo:
# x = a + di
#     b + ei
#     c + fi
## @seealso{}
## @end deftypefn

## Author: Alvaro
## Created: 2023-06-19

function x = sol_LU_img (A, b)
  A2 = [real(A) -imag(A); imag(A) real(A)];
  [A, Det, Pivot] = decomposicao_LU (A2);
  U = triu(A);
  L = eye(size(A,1)) + tril(A, -1);
  b = [-6+2i;-4;-2-10i];
  b2 = [real(b); imag(b)];
  y = subst_sucess_pivotal(L, b2, Pivot);
  x = subst_retro(U, y')';
endfunction
