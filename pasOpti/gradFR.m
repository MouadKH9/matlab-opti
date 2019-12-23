function [G]=gradFR(x)
G = [40*x(1)^3-40*x(1)*x(2)+2*x(1)-2; -20*x(1)^2+20*x(2)];
end 