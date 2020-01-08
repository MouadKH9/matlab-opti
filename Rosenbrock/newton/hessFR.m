function [hess] = hessFR(x)
hess1=120*x(1).^2-40*x(2)+2 ;
hess2=-40*x(1);
hess3=-40*x(1);
hess4=20;
     hess=[hess1 hess2;hess3 hess4];
     
     
end      