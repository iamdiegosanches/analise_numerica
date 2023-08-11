function [X, Iter, Info] = Newton_Raphson_Sistema(tp,n,X,Toler,IterMax,f)
  Normadeltax = 1+Toler;
  lambda = 1;
  InfoPR = 0;
  Iter = 0;
  Fx = Vetor_Funcao(X)
  NormaFx = norm(Fx,2);
  While 1
    Jx = Matriz_Jacobiana(X)
    [Jx,Pivot,Deter,InfoLU] = Decomposicao_LU(n,n,Jx)
    if(Normadeltax <= Toler && NormaFx <= Toler) || InfoLU ~= 0 || InfoPR ~= 0 || Iter >= IterMax
      break;
    endif
    T = Substituicoes_Sucessivas_Pivotal(n,Jx,-Fx,Pivot)
    deltax = Substituicoes_Retroativas(n,Jx,T)
    if tp == 1
      X = X + deltax;
      Fx = Vetor_Funcao(X)
    else
      Gx = 2* Jx^T*Fx;
      [X,Fx,Lambda,j,InfoPR] = Passo_Restrito(n,X,Fx,deltax,Gx)
    endif
    NormaFx = norm(Fx,2);
    Normaldeltax = lambda*norm(deltax,2)/ norm(x,2);
    Iter = Iter+1;
  endwhile
  if Normadeltax <= Toler && NormaFx <= Toler
    Info = 0;
  else
    if InfoLU == 0 && InfoPR == 0
    Info = 1;
    else
    Info = 2;
    endif
  endif
endfunction
