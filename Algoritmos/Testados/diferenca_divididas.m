## Copyright (C) 2023 aluno
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
## @deftypefn {} {@var{resposta} =} vetores_iguais (@var{x}, @var{y})
##
## @seealso{}
## @end deftypefn

## Author: aluno <aluno@LI1-150814>
## Created: 2023-06-27

function resposta = vetores_iguais (x, y)
  if size(x, 2) == size(y, 2) && size(x,1) == size(y,1) == 1
    n = size(x,2);
    T(:,1) = y;
    for j = 2 : n 
      for i = 1 : (n-j+1)
        T(i,j)= (T(i+1,j-1)-T(i,j-1))/(x(i+j-1)-x(i));
      endfor
    endfor
    resposta = T;
  else
    disp('Os vetores possuem tamanhos diferentes');
    resposta = 0;
  endif

endfunction
