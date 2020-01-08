function [sol,xit,nit] = gradientPreconditionne(x0,tol)
    i=1;
    x= x0 ;
    xit = [];
    nmax=10^5;
    r0=10^(-3);
    tolr=10^(-8);
    while true
        D=precondJacobi(hessFR(x));
        B=gradFR(x);
        di=D\B;
        rho=rechercheDuPas(x,di,r0,tolr);
        x = x+rho * di;
        xit = vertcat(xit,x');
        if (norm(gradFR(x))<=tol || i>=nmax)
            break
        end
        i=i+1;
    end
    sol=x;
    nit = i; 
end