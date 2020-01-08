function [G,l,min]=conditionsOptimalite(xStar,eps)
    G= gradFR(xStar);
    l=eig(hessFR(xStar));   %la fonction eig calcule les valeur propres d'une matrice
    if norm(G)<eps && l(1) > 0 && l(2) > 0
        min=1;
    else
        min=0;
    end
end

