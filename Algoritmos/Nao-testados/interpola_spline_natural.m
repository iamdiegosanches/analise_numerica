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
## @deftypefn {} {@var{y_new} =} interpola_spline_natural (@var{x}, @var{y}, @var{x_new})
## Entrada:
## x: vetor de abscissas
## y: vetor de ordenadas
## x_new: vetor de abscissas novo
## Saida:
## y_new: vetor interpolado para os novos valores de x (x_new)
## @seealso{}
## @end deftypefn

## Author: Alvaro <Alvaro@DESKTOP-TG63L3N>
## Created: 2023-07-06

function y_new = interpola_spline_natural (x, y, x_new)
  n = length(x);
  [s2, Info] = splines_naturais(n, x, y);
  # Verifica se foi possivel calcular os coeficientes
  if Info ~= 0
    disp('Erro ao calcular os coeficientes do spline cubico natural');
    return;
  endif
  y_new = zeros(size(x_new));
  for i = 1:length(x_new)
    # Encontra o intervalo em que x_new(i) esta
    j = 1;
    # Ajustando o valor de j
    while j < n && x_new(i) > x(j+1)
      j++;
    endwhile
    # Calcula o valor interpolado de y usando a formula do spline cubico natural
    h = x(j+1) - x(j);
    t = (x_new(i) - x(j)) / h;
    a = (1 - t) * y(j) + t * y(j+1);
    b = t * (1 - t) * ((1 - t) * s2(j) + t * s2(j+1));
    y_new(i) = a + (h^2 / 6) * b;
  endfor
endfunction
