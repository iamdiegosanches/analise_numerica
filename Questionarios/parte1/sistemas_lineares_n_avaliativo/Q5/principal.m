clear
A = [-10+4i -4-2i 3-1i; -4+3i -6+2i 9i; -9-7i 1+8i 2i];
ar = real(A);
ai = imag(A);
A2 = [ar -ai; ai ar];
[R, Det, Pivot] = decomposicao_LU (A2);
U = triu(R);
L = eye(size(R,1)) + tril(R, -1);
b = [-6+2i;-4;-2-10i];
b2 = [real(b); imag(b)];
y = subst_sucess_pivotal(L, b2, Pivot);
x = subst_retro(U, y')
# x = 0.5606  -0.3426  -0.1321   0.3144  -0.2416   0.3726
# Logo:
# x = 0.5606 + 0.3144i
#    -0.3426 - 0.2416i
#    -0.1321 + 0.3726i

