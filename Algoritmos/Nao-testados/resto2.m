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
## @deftypefn {} {@var{r} =} resto2 (@var{a}, @var{b})
##
## @seealso{}
## @end deftypefn

## Author: Alvaro <Alvaro@DESKTOP-TG63L3N>
## Created: 2023-07-24

function r = resto2 (a, b)
  q = floor(a / b);
  r = a - (q * b);
endfunction
