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
## @deftypefn {} {@var{retval} =} horner_mod (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-16

function y = HornerMod(c,a)
  n = length(c);
  fprintf('O polinomio tem %d raizes\n',n);
  if(rem(n,2)==1)
      disp('A funcao tem no minimo uma raiz real')
  endif
    y=c(1);
    for i=2:n+1;
        y=y*a+c(i);
    endfor
endfunction
