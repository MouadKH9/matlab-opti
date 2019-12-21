function [H] = hessFR(x)
  H = [120 * x(1).^2 - 40 * x(2) + 2  -40*x(1) ; -40 * x(1) 20 ] ;
endfunction
