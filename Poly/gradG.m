function [ grad ] = gradG(x)
    % Fonction qui retourne la valeur du grad G en un point x

    grad = [2 * x(1) ; 4 * x(2)^3 + 4 * x(2) ];

end

