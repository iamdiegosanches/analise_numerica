function lambdat = Passo_Restrito(Fk1,Fk,Fp,inclin,lambda,lambdap)
  t1 = Fk1-Fk-lambda*inclin;
  t2 = Fp-Fk-lambdap*inclin;
  t3 = lambda-lambdap;
  a = (t1/lambda^2-t2/lambdap^2)/t3;
  b = (t2*lambda/lambdap^2-t1*lambdap/lambda^2)/t3;
  if a == 0
    lambdat = -inclin/(2*b);
  else
    disclim = b^2-3*a*inclin;
    if disclim < 0
      lambdat = 0.5*lambda;
    elseif b <= 0
        lambdat = (-b+sqrt(disclim))/(3*a);
      else
        lambdat = -inclin/(b+sqrt(disclim));
    endif
  endif
  if lambdat > 0.5*lambda
    lambdat = 0.5*lambda;
  endif
endfunction
