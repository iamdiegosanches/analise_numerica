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
## @deftypefn {} {@var{qualidade} =} qualidade_aco (@var{dureza}, @var{impureza})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-09

function qualidade = qualidade_aco (dureza, impureza)
  du = [100;144;188;233;277;322;366;411;456;500];
  im = [15;23;32;41;50;59;68;77;86;95];
  x = [du im];
  qu = [0;11;22;33;44;55;66;77;88;100];

  [b, r2, s2, AICc, Info]  = regressao_linear_en (10, 2, 3, 1, x, qu);
  qualidade = b(1) + b(2)*dureza + b(3)*impureza;
endfunction
