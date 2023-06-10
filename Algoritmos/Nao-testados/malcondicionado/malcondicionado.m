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
## @deftypefn {} {@var{Info} =} malcondicionado (@var{A})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-10

function Info = malcondicionado(A)
    [m, n] = size(A);
    if m ~= n
        error('A matriz deve ser quadrada');
    endif

    invA = inversa(A);
    normA = norm(A);
    normInvA = norm(invA);
    condA = normA * normInvA;

    % Define um limite arbitrário para o número de condicionamento
    limiteCondicionamento = 1e10;

    % Verifica se o número de condicionamento está acima do limite
    if condA > limiteCondicionamento
        Info = 1;
    else
        Info = 0;
    endif
endfunction

