clear 
clc

A = [6 2 1; 2 9 5; 0 1 8];
b = [77;126;79];

[x, Iter, Info] = jacobi (3, A, b, 10^(-6), 300);

if Info == 1
  disp('Nao foi possivel resolver pelo metodo selecionado');
else
  disp('A solucao do sistema e (verde, amarelo, branco): ')
  disp(x);
endif

verde = 9;
amarelo = 7;
branco = 9;

q_v = input('Digite a quantidade de pratos verde: ');
q_a = input('Digite a quantidade de pratos amarelo: ');
q_b = input('Digite a quantidade de pratos branco: ');

total_a_pagar = q_v*verde + q_a*amarelo + q_b*branco;

disp('O total a ser pago sera: ');
disp(total_a_pagar); 
