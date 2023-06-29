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
## @deftypefn {} {@var{x} =} decomp_espectral (@var{A}, @var{b})
##
## @seealso{}
## @end deftypefn

## Author: dgsan <dgsan@LAPTOP-3MAB8DDK>
## Created: 2023-06-12

function x = decomp_espectral (A, b)
  [V, LAMBDA]  = eig(A);
  Vmenos1 = inversa(V);
  LAMBDAmenos1 = inversa(LAMBDA);
  x = (V*LAMBDAmenos1*Vmenos1)*b;
endfunction
