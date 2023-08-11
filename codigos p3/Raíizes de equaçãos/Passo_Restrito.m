function [Xk1,FXk1,lambda,j,info] = Passo_Restrito(n,Xk,FXk,Pk,Gk)
  Fk=(norm(FXk,2))^2
  comp = norm(Pk,2)
  passomax = 10^3*max(norm(Xk,2),1)
  if comp > passomax
    escala = passomax/comp
    Pk = Pk*escala
  endif
  passorel = 0
  inclin = Gk'.*Pk
  for i=1:n
    t=abs(Pk(i))/max(abs(Xk(i)),1)
    if t>passorel
      passorel=t
    endif
  endfor
  Epsilon = eps
  lambdamin = Epsilon/passorel
  j=0
  lambda = 1
  while 1
    Xk1=Xk+lambda*Pk
    FXk1= Vetor_Funcao(Xk1)
    Fk1 = (norm(FXk1,2))^2
    j=j+1
    if lambda<lambdamin
      Xk1=Xk
      Info = 1
      break
    else if Fk1<=(Fk+10e-4*inclin*lambda)
      Info = 0
      break
    else
      if j=1
        lambdat=-inclin/(2*(Fk1-Fk-inclin))
      else
        lambdat = Lambda_Cubico(Fk1,Fk,Fp,inclin,lambda,lambdap)
      endif
    endif
    lambdap = lambda
    Fp=Fk1
    lambda = max(lambdat,0.1*lambda)
  endwhile
endfunction
