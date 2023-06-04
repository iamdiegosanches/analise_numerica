## Copyright (C) 2023 Diego
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
## @deftypefn {} {@var{result} =} A1_Q1 ()
##
## @seealso{}
## @end deftypefn

## Author: Diego
## Created: 2023-05-21

function result = A1_Q1 ()
  x = input('Digite o valor de x: ');
  if x > 1 || x < -1
    disp('Invalido. O |x| < 1.');
    return;
  endif
  n = input('Digite o número de termos (n): ');

  result = x;

  for i = 2 : n
    numerador = 1;
    denominador = 1;

    for j = 1 : 2 : (2*i)-2
      numerador = numerador * j;
    endfor

    for j = 2 : (2*i)-1
      if rem(j, 2) == 1 && j ~= (2*i)-1
        continue;
      else
        denominador = denominador * j;
      endif
    endfor

    result = result + (x^(2*i - 1)) * (numerador / denominador);
  endfor
endfunction
