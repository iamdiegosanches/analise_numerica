## Copyright (C) 2023 dgsan
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
## @deftypefn {} {@var{retval} =} limites_raizes_grafico (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: dgsan <dgsan@LAPTOP-3MAB8DDK>
## Created: 2023-08-16

function [L] = limites_raizes_grafico(n,c,f)
  if(c(1) == 0)
    disp('Coeficiente c(1) nulo')
    return
  endif
  t = n+1;
  c(t+1) = 0;
  while 1
    if c(t) ~= 0
       break
    endif
    t = t-1;
  endwhile
  for i=1:4;
    if(i == 2 || i ==4 )
      for j = 1 : t/2;
        aux = c(j);
        c(j) = c(t-j+1);
        c(t-j+1) = aux;
      endfor
      endif
      if i == 3
        for j = 1 : t/2;
          aux = c(j);
          c(j) = c(t-j+1);
          c(t-j+1) = aux;
        endfor
        for j = t-1 : -2 : 1;
          c(j)=-c(j);
        endfor
      endif
      if c(1)<0
        for j = 1 : t
          c(j) =- c(j);
        endfor
      endif
      k = 2;
      while 1
        if(c(k)<0 || k>t)
           break
        endif
        k=k+1;
      endwhile
      if(k <= t)
        B = 0;
        for j = 2 : t;
           if(c(j) < 0 && abs(c(j)) > B)
              B = abs(c(j));
           endif
          endfor
          L(i) = 1+(B/c(1))^(1/(k-1));
      else
          L(i) = 10^100;
      endif
  endfor
  aux = L(1);
  L(1) = 1/L(2);
  L(2) = aux;
  L(3) =- L(3);
  L(4) =- 1/L(4);
  x1 = linspace(L(1),L(2),100);
  x2 = linspace(L(3),L(4),100);
  plot(x1,f(x1),'r',x2,f(x2),'k');
endfunction
