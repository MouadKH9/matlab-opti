function [sol,xit,nit] = quasiNewton(x,tol)
  nit = 1;
  D = eye(2,2);
  p = 10^(-3);
  xit = [];
  while true
    d = linsolve(D,-gradFR(x));
    p = rechercheDuPas(x,d,p,10^(-8));
    tmp = x;
    x = x + p*d;
    y = gradFR(x) - gradFR(tmp);
    s = p*d;
    xit = vertcat(xit,x');
    D = D + (y*y')/(y' * s) - (D*s*s'*D)/(s'*D*s);
    nit = nit + 1;
    if norm(gradFR(x)) <= tol  || nit >= 10^5 
      break
    endif
  endwhile
  sol = x;
  
endfunction
