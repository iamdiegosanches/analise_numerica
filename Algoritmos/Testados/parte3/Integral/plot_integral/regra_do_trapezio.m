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
## @deftypefn {} {@var{Integral} =} regra_do_trapezio (@var{a}, @var{b}, @var{n}, @var{f})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-01

function Integral = regra_do_trapezio (a, b, n, f)
  h = (b-a)/n;
  x = a:h:b;
  y = f(x);
  soma = 0;
  for i = 1 : n
    soma = soma + y(i) + y(i+1);
  endfor
  Integral = (h/2)*soma;
endfunction
