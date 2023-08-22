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
## @deftypefn {} {@var{retval} =} plot_integral (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: dgsan <dgsan@LAPTOP-3MAB8DDK>
## Created: 2023-08-21

function plot_integral (f, a, b)
  tamanho_marca = 10; %Define o tamanho do marcador do grafico
  tamanho_linha = 5; %Define o tamanho das linhas do grafico
  x = linspace(a,b,1000);
  y = f(x);
  max_m = input('Entre com a quantidade maxima de sub-intervalos: ');
  disp(' Numero de Sbintervalos | Integral exata | Integral Newton | Integral subintervalos ');
  figure();
  #nome = input('Entre com o nome do arquivo a ser salvo: ');
  set(gcf, 'Position', get(0, 'Screensize'));
  h1 = plot(x,y,'-r');
  xlabel('X');
  ylabel('Y');
  title('Grafico da funcao');
  h = gca();
  set(h,'fontsize',15);
  legend('Funcao');
  hold on
  for m = 1 : max_m
    x = linspace(0.4,2,m+1);
    y = f(x);
    int_total = 0;
    for i = 1 : m
      xlin = [x(i),x(i+1)];
      ylin = [y(i),y(i+1)];
      ValInter = mean(xlin);
      [Yinter,c,CondErro] = interpolacao_polinomial(xlin',ylin',ValInter);
      ylin = c(1)+c(2)*xlin;
      int_val = (c(1)*xlin(2)+c(2)/2*xlin(2)^2)-(c(1)*xlin(1)+c(2)/2*xlin(1)^2);
      int_total = int_total + int_val; %Calcula o valor total pela soma das integrais de cada intervalo
      if m == max_m
        h1 = plot(xlin,ylin,'o-');
        set(h1,'markersize',tamanho_marca);
      endif
    endfor
    [int_newton CondErro] = newton_cotes(x(1),x(end),1,m,f); %Calcula a integral baseado no metodo de Newton-Cotes
    calcint = integral(f,x(1),x(end)); %Calcula a integral exata baseado no metodo ded integracao do Octave
    texto = sprintf('%i%20.2f%20.2f%20.2f',m,calcint,int_newton,int_total);
    disp(texto);
    saveas(gcf, 'Graficos/aaaaaaaa.png');
  endfor
endfunction
