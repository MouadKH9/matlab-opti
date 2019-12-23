function [sol,Xit,nit] = quasiNewton(x,tol)
    % Cette fonction utilise la methode du quasi-newton pour trouver le
    % minumum du fonction du Rosenbrock
    
    % On commence par l'intialisation:
    nit = 1;
    D = eye(2,2);
    p = 10^(-3);
    Xit = [];
    
    % On boucle infiniment
    while true
        % On resoudre D * d = -gradFR(x)
        d = linsolve(D,-gradFR(x));
        % On utilise la fonction rechercheDuPas pour trouver la pas optimal
        p = rechercheDuPas(x,d,p,10^(-8));
        tmp = x;
        x = x + p*d; % Calcul du x suivante
        y = gradFR(x) - gradFR(tmp);
        s = p*d;
        Xit = vertcat(Xit,x'); % On ajout la valeur du x a notre vecteur Xit
        D = D + (y*y')/(y' * s) - (D * s * s' * D)/(s' * D * s); % Calcul du D suivante
        nit = nit + 1;
        
        % La condition d'arret
        if norm(gradFR(x)) <= tol  || nit >= 10^5 
          break
        end
    end
    sol = x;
end
