function [FR] = evalFR(x)
    % Cette fonction sert à donner la valeur de la fonction de 
    % Rosenbrock à un point specifier.
    FR = (x(1,:) - 1).^2 + 10 * (x(1,:).^2 - x(2,:)).^2;
end
