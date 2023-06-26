## Copyright (C) Diego Sanches Nere dos Santos
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
## @deftypefn {} {@var{retval} =} quest ()
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches Nere dos Santos
## Created: 2023-06-06

function retval = quest (input1, input2)
  res = input('escolha o tipo de matriz 1=d, 2=l, 3=u: ');
  
  if res < 1 || res > 3
    error('invalida')
  endif
  
  if res == 1
      size = randi([2,10]);
      mat = eye(size);
      v = rand(size,1)*100;
      retval = mat.*v
   elseif res == 2
      size = randi([2,10]);
      mat = rand(size, size);
      retval = tril(mat)
   else
      size = randi([2,10]);
      mat = rand(size, size);
      retval = triu(mat)
  endif
  
endfunction
