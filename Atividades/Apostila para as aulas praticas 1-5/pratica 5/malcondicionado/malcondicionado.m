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
## @deftypefn {} {@var{Info} =} malcondicionado (@var{A})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-10

function Info = malcondicionado(A)
  normA = norm(A, 1);
  normInvA = norm(inversa(A), 1);
  numeroCond = normA * normInvA;

  limite = 1 / eps;
  if numeroCond > limite
      Info = 1;
  else
      Info = 0;
  endif
endfunction

