function [x0,xit,nit] = pasFixe(x0,rho,tol)

    nMax = 10^5;
    j = 1;
    xit = x0';
    while true
        d = -gradFR(x0);
        x0 = x0 + rho*d;
        xit = vertcat(xit,x0');
        if norm(gradFR(x0)) < tol || j > nMax
            break
        end
        j = j + 1;
    end
    nit = j;
end