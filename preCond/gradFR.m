function [grad] = gradFR(x)
    % Cette fonction sert � donner la valeur de la gradient du fonction de 
    % Rosenbrock � un point specifier.
    grad = [2 * x(1) + 40 * x(1).^3 - 40 * x(1) * x(2) - 2 ; -20 * x(1).^2 + 20 * x(2)];
end
