function [x0,j] = pasFixe(x0,p,tol)

%   Fonction qui sert a trouver le minimum du fonction G et le nbre
%   d'iterations pour atteindre ce min.

    nMax = 10^5;
    j = 1;
    while true
        d = -gradG(x0);
        x0 = x0 + p*d;
        j = j + 1;
        if norm(gradG(x0)) < tol || j > nMax
            break
        end
    end
end