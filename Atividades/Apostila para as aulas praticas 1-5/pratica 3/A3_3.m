clear
# resolucao do exercicio 3.3
A = [3 5; -2 4];
# i)
m21 = -A(2,1)/A(1,1)
# ii)
L1 = m21*A(1,:)
# iii)
A(2,:) = L1 + A(2,:)
# Observa-se uma matriz triangular superiorto

# Letra b
A = [2 1 -3; 4 -2 5; 1 2 -7];
L = eye(3)
L(2,1)=A(2,1)/A(1,1)
L(3,1)=A(3,1)/A(1,1)
A(2,:)=-L(2,1)*A(1,:)+A(2,:)
A(3,:)=-L(3,1)*A(1,:)+A(3,:)
L(3,2)=A(3,2)/A(2,2)
A(3,:)=-L(3,2)*A(2,:)+A(3,:)
# L e A matrizes para a decomposicao LU
