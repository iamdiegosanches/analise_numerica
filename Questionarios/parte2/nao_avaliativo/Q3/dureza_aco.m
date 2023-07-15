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
## @deftypefn {} {@var{dureza} =} dureza_aco (@var{diam_furo})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-15

function dureza = dureza_aco (diam_furo)
  x = [2.75;3.10;3.45;3.70;4.00;4.30;4.70;4.95;5.20;5.60];
  y = [495;388;311;269;229;197;183;146;131;111];
  plot(x, y, 'o')
  hold on

  # Removido o setimo valor da tabela original
  x = [2.75;3.10;3.45;3.70;4.00;4.30;4.95;5.20;5.60];
  y = [495;388;311;269;229;197;146;131;111];
  plot(x, y, 'or')
  title('Grafico  de dispersao');

  v = 1;
  p = 3;
  ii = 1; # Indicacao que a funcao nao passa pela origem
  [b, r2, s2, AICc, Info]  = regressao_linear_en (9, v, p, ii, x, y)

  dureza = b(1) + b(2)*diam_furo + b(3)*diam_furo^2;
endfunction
