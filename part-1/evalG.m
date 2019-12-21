function [ G ] = evalG(x)
    % Fonction qui retourne la valeur du G en un point x

    G = x(1) ^ 2 + x(2)^2 *(x(2)^2 + 2); 

end

