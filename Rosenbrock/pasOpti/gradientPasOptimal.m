function [sol,xit,nit]=gradientPasOptimal(x0,tol)
    tolR=10^-8;
    rho0=10^-3;
    i=0;   
    grad=gradFR(x0);  
    xit=x0';
    x=x0;
    while( norm(grad)>tol) && (i<10^5)    
        d=-grad;   
        rho=rechercheDuPas(x,d,rho0,tolR);
        x=x+rho*d;
        xit=[xit;x'];
        grad=gradFR(x); 
        i=i+1;  
    end
    nit=i;
    sol = x;
end 