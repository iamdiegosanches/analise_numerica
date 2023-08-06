%inicializacoes
x = linspace(1,61000); %crie um vetor de pontos x
y = x.sqrt(e.^x); %calcula os valores de y
tamanho_marca = 10; %Define o tamanho do marcador do grafico
tamanho_linha = 5; %Define o tamanho das linhas do grafico

%Imprime o grafico da funcao e ajusta a visializacao
figure();
set(gcf, 'Position', get(0, 'Screensize')); %Maximiza a figura
h1 = plot(x,y,'*r'); %Imprime o grafico da funcao
xlabel('X');
ylabel('Y');
title('Grafocp da funcao');
set(h1, 'markersize', tamanho_marca);
h = gca();
set(h,'fontsize',15); %Determina a fonte do grafico
legend('Funcao'); %Cria a legenda no grafico
pause(0.1);
saveas(gcf,'Graficos/funcao_integracao.png) %Salva o grafico em uma figura
hold on
input('Pressione enter para continuar');

%Determina o polinomio interpolador de grau 1 e imprime o grafico
xlin = [x(1),x(end)];
ylin = [y(1),y(end)];
ValInter = mean(xlin);
[Yinter,c,CondErro] = interpolacao_polinomial(xlin',ylin',ValInter);
ylin = c(1)+c(2)*x;
h1 = plot(x,ylin,'og'); %Imprime o grafico do polinomio interpolador de grau 1
set(h1,'markersize',tamanho_marca);
legend('Funcao','Aproximacao linear');
pause(0.1);
saveas(gcf,'Graficos/funcao_integracao_grau.png');

%Determina o polinomio interpolador de grau 2 e imprime o grafico
input('Pressione enter para continuar');
xlin = [x(1),mean(xlin),x(end)];
ylin = xlin./sqrt(exp(xlin));
[Yinter,c,CondErro] = interpolacao_polinomial(xlin',ylin',ValInter);
ylin = c(1)+c(2)*x+c(3)*x.^2;
h1 = plot(x,ylin,'db'); %imprime o grafico do polinomio interpolador de grau 1
set(h1,'markersize',tamanho_marca);
legend('Funcao','Aproximacao linear','Aproximacao quadratica');
pause(0.1);
saveas(gcf,'Graficos/funcao_integracao_grau1_grau2.png');

%Determina o valor da integral utilizando a divisao do intervalo de integracao em subintervalos
while 1
  x = linspace(0,2,1000);
  y = exp(x).*cos(10*x); %Funcao para integracao numerica
  max_m = input('Entre com a quantidade maxima de sub-intervalos: ');
  if isempty(max_m)
    break;
  endif
  disp(' Numero de Sbintervalos | Integral exata | Integral Newton | Integral subintervalos ');
  figure();
  set(gcf, 'Position', get(0, 'Screensize'));
  h1 = plot(x,y,'-r');
  xlabel('X');
  ylabel('Y');
  title('Grafico da funcao e^x*sen(10x)');
  h = gca();
  set(h,'fontsize',15);
  legend('Funcao');
  hold on
  for m = 1 : max_m
    x = linspace(0.4,2,m+1);
    y = exp(x).*cos(10*x);
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
    Fx = @(x)exp(x).*cos(10*x);
    [int_newton CondErro] = newton_cotes(x(1),x(end),1,m,Fx); %Calcula a integral baseado no metodo de Newton-Cotes
    calcint = integral(Fx,x(1),x(end)); %Calcula a integral exata baseado no metodo ded integracao do Octave
    texto = sprintf('%i%20.2f%20.2f%20.2f',m,calcint,int_newton,int_total);
    disp(texto);
  endfor
endwhile
