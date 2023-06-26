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
## @deftypefn {} {@var{matriz_ao_quadrado} =} quadrado_matriz ()
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-12

function matriz_ao_quadrado = quadrado_matriz ()
  ordem = input("Digite a ordem da matriz quadrada: ");

  matriz = rand(ordem);

  matriz_ao_quadrado = matriz*matriz;

  disp("Matriz original:");
  disp(matriz);
endfunction
