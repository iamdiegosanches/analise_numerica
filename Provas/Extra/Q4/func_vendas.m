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
## @deftypefn {} {@var{v} =} func_vendas (@var{po}, @var{vi})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-21

function v = func_vendas (po, vi)

  pontos = [0;142.857;285.714;428.571;571.529;714.286;857.143;100];
  vitorias = [0;714.286;142.857;214.286;285.714;357.143;428.571;50];
  vendas = [30;580;1130;1680;2230;2780;3330;3880];

  x = [pontos vitorias];

  # Grafico de dispersao
  plot3(pontos, vendas, vitorias, 'o');
  hold on;

  # ajuste de curvas
  [b, r2, s2, AICc, Info]  = regressao_linear_en (8, 2, 3, 1, x, vendas);

  # Quanditade vendida
  v = b(1) + b(2)*po + b(3)*vi;

  # Curva ajustada
  xp1 = linspace(min(pontos), max(pontos), 100);
  xp2 = linspace(min(vitorias), max(vitorias), 100);
  yp = b(1) + b(2)*xp1 + b(3)*xp2;
  # grafico da curva ajustada
  plot3(xp1, yp, xp2, '-r');
  plot3(po, v, vi, '*b');

endfunction
