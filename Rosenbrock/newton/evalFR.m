function [eval] = evalFR(x)
    eval = (x(1) - 1).^2 + 10 * (x(1)^2 - x(2)).^2; 
end

