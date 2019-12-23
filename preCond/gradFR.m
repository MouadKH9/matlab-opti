function [grad] = gradFR(x)
    % Cette fonction sert à donner la valeur de la gradient du fonction de 
    % Rosenbrock à un point specifier.
    grad = [2 * x(1) + 40 * x(1).^3 - 40 * x(1) * x(2) - 2 ; -20 * x(1).^2 + 20 * x(2)];
end
