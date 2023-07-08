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
## @deftypefn {} {@var{retval} =} prod (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-20

function retval = produto (input1, input2, input3)

  # Vetor linha
  if size(input1, 2) == 1
    # Ajusta a matriz e o vetor
    if size(input2, 2) > size(input1, 1)
      input2 = input2(:,1:size(input1, 1));
    elseif size(input2, 2) < size(input1, 1)
      input1 = input1(1:size(input2,1),:);
    endif
    retval = input1 * input2;
  endif
  # Vetor coluna
  if size(input1, 1) == 1
    # Ajusta a matriz e o vetor
    if size(input2, 1) > size(input1, 2)
      input2 = input2(1:size(input1, 2), :);
    elseif size(input2, 1) < size(input1, 2)
      input1 = input1(:,1:size(input2,1));
    endif
    disp(input1);
    retval = input1 * input2;
  endif
  if nargin == 3
    # vetor linha
    if size(input3, 2) == 1
      if size(retval, 2) == 1
        retval = retval';
        if size(retval, 2) > size(input3, 1)
          retval = retval(:, 1:size(input3, 1));
        elseif size(retval, 2) < size(input3, 1)
          input3 = input3(1:size(input3, 2), :);
        endif
      endif
      if size(retval, 2) > size(input3, 1)
          retval = retval(:, 1:size(input3, 1));
      elseif size(retval, 2) < size(input3, 1)
          input3 = input3(1:size(input3, 2), :);
      endif
      retval = retval * input3;
    endif
    # Vetor coluna
    if size(input3, 1) == 1
      if size(retval, 1) == 1
        retval = retval';
        if size(retval, 2) > size(input3, 1)
          retval = retval(:, 1:size(input3, 1));
        elseif size(retval, 2) < size(input3, 1)
          input3 = input3(1:size(input3, 2), :);
        endif
      endif
      if size(retval, 2) > size(input3, 1)
        retval = retval(:, 1:size(input3, 1));
      elseif size(retval, 2) < size(input3, 1)
        input3 = input3(1:size(input3, 2), :);
      endif
      retval = retval * input3;
    endif
  endif
endfunction
