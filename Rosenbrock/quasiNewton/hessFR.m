function [H] = hessFR(x)
    % Cette fonction sert à donner la valeur de la hessiene du fonction de 
    % Rosenbrock à un point specifier.
    H = [120 * x(1).^2 - 40 * x(2) + 2  -40*x(1) ; -40 * x(1) 20 ] ;
end
