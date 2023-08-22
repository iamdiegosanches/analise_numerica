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
## @deftypefn {} plot_and_save_integral (@var{f}, @var{a}, @var{b}, @var{n}, @var{m}, @var{metodo})
##
## @seealso{}
## @end deftypefn

## Author: Alvaro <Alvaro@DESKTOP-TG63L3N>
## Created: 2023-08-21

function plot_and_save_integral (f, a, b, n, m, metodo)
  x = linspace(a, b, 100);
  tamanho_marca = 10;
  figure();
  h1 = plot(x, f(x), 'b', 'LineWidth', 2);
  title('Grafico da Funcao Integrada');
  xlabel('x');
  ylabel('f(x)');
  set(h1, 'markersize', tamanho_marca);
  grid on;

  switch metodo
    case 1
      [Integral, Info] = newton_cotes (a, b, n, m, f)
    case 2
      Integral = regra_do_trapezio (a, b, n, f)
    case 3
      Integral = um_terco_de_simpson (a, b, n, f)
    case 4
      Integral = tres_oitavos_de_simpson (a, b, n, f)
  endswitch

  if exist('Info', 'var') && Info == 0
    legend(sprintf('Integral: %.4f', Integral));
  endif

  filename = input('Informe onde deseja salvar a imagem: ');

  saveas(gcf, filename);

  fprintf('Grafico salvo em "%s".\n', filename);
endfunction
