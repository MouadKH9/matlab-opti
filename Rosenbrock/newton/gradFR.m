function [grad] = gradFR(x)
      grad = [2*(x(1)-1)+40*x(1)*(x(1).^2-x(2));20*(x(2)-(x(1)).^2)];

end

