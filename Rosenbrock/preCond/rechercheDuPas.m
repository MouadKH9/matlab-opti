function [r1] = rechercheDuPas(x,d,p0,tolR)  
    % Cette fonction sert à trouver la pas optimale.
    % On commence par l'intialisation:
    r1 = p0;
    j = 1;
    % On boucle infiniment
    while true
        phip = d' * gradFR(x + r1 * d); % Le calcul de phi'
        phipp = d' * hessFR(x + r1* d) * d; % Le calcul de phi''
        r0 = r1;
        r1 = r1 - phip/phipp; % Calcul du rho suivante
        j = j + 1;
        % La condition d'arret
        if norm(r1 - r0) <= tolR || j >= 10000
          break
        end
    end
end
