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
## @deftypefn {} {@var{Var} =} troca_sinais (@var{n1}, @var{c})
## Objetivo: Contar o numero de troca de sinais dos coeficientes de um polinomio
## Entrada:
## n1:
##      grau do polinomio + 1
## c:
##      coeficientes -> c(1)x^n + c(2)c^n-1 + ... + c(n)x + c(n+1)
## Saida:
##      Numero de variacoes de sinais.
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-02

function Var = troca_sinais (n1, c)
  Var = 0;
  i = 1;
  for j = 2 : n1
    if (c(j) ~= 0)
      if ((c(i)*c(j)) < 0)
        Var = Var + 1;
      endif
      i = j;
    endif
  endfor
endfunction
