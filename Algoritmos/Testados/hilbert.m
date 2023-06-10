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
## @deftypefn {} {@var{H}, @var{Hinv}, @var{NinfH}, @var{NinfHinv} =} hilbert (@var{n})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-05-26

function [H, Hinv, NinfH, NinfHinv]  = hilbert (n)
    for i = 1 : n
      H(i,i) = 1/(2*i-1);
      for j = i +1 : n
        H(i,j) = 1/(i+j-1);
        H(j,i) = H(i,j);
      endfor
    endfor
    NinfH = 0;
    for j = 1: n
      NinfH = NinfH + H(1,j);
    endfor
    Hinv(1,1) = n^2;
    Prod1 = 1;
    Soma = Hinv(1,1);
    for j =2 : n
      Prod1 = Prod1 * (1-(n/(j-1))^2);
      Hinv(1,j) = n^2/j*Prod1;
      Hinv(j,1) = H(1,j);
      Soma = Soma + abs(Hinv(1,j));
    endfor
    NinfHinv = Soma;
    Prod2 = 1;
    for i = 2: n
      Prod1 = 1;
      Prod2 = Prod2 * ((n/(i-1))^2-1);
      Hinv(i,i) = (n*Prod2)^2/(2*i-1);
      Soma = Hinv(i,i);
      for j  =i+1 : n
        Prod1 = Prod1 * (1-(n/(j-1))^2);
        Hinv(i,j) = (n*Prod2)^2 * Prod1/(i+j-1);
        Hinv(j,i) = Hinv(i,j);
        Soma = Soma+abs(Hinv(i,j));
      endfor
      for j = 1 : i-1
        Soma = Soma + abs(Hinv(i,j));
      endfor
      if Soma > NinfHinv
        NinfHinv = Soma;
      endif
    endfor
endfunction
