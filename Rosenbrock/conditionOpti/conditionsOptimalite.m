function [G,l,min] = conditionsOptimalite(xStar,eps)
%CONDITIONSOPTIMALITE Summary of this function goes here
%   Detailed explanation goes here
    G = gradFR(xStar);
    
    % C1: GradFR(xStar) <= eps
    % C2: hessFR()
end

