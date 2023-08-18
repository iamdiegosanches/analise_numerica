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
## @deftypefn {} {@var{retval} =} Euler (@var{input1}, @var{input2})
## Entradas:
## limite inferior, limite superior, valor inicial e numero de subintervalos
## Saidas:
## abscissas e solucao do PVI
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-14

function [VetX, VetY] = Euler (a, b, y0, m, f)
  h = (b-a)/m;
  x = a;
  y = y0;
  VetX(1) = x;
  VetY(1) = y;
  fxy = f(x,y); # avaliar f(x,y) em x = x0 e y = y0
  for i = 1 : m
    x = a + i*h;
    y = y + h*fxy;
    fxy = f(x,y);
    VetX(i+1) = x;
    VetY(i+1) = y;
  endfor
endfunction
