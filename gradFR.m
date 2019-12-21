function [grad] = gradFR(x)
  grad = [2 * x(1) + 40 * x(1).^3 - 40 * x(1) * x(2) - 2 ; -20 * x(1).^2 + 20 * x(2)];
endfunction
