function [ hess ] = gradG(x)
    % Fonction qui retourne la valeur du hessiene du G en un point x

    hess = [2 0 ; 0 12*x(2)^2 + 4 ];

end

