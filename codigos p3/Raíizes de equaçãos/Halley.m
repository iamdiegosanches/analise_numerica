function[Raiz Iter Info] = Halley(x,Toler,IterMax,f,dfx,ddfx)
  deltax = 1+Toler;
  Iter = 0;
  while 1
    Fx = f(x);
    DFx = dfx(x);
    if (abs(deltax) <= Toler && abs(Fx) <= Toler) || Iter >= IterMax
      break;
    endif
    D2Fx = ddfx(x);
    deltax = 2*Fx*DFx/(2*DFx^2-Fx*D2Fx);
    x = x - deltax;
    Iter = Iter+1;
  endwhile
  Raiz = x;
  if abs(deltax) <= Toler && abs(Fx) <= Toler
    Info = 0;
  else
    Info = 1;
  endif

 endfunction
