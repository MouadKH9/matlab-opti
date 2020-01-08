function [sol,xit,nit]=newton(x0,tol)
    xit = [];
    i = 1;
    while true
        D =hessFR(x0);
        b= -gradFR(x0);
            d=D\b;
       x0 = x0 + d;
       xit = vertcat(xit,x0');
       if norm(gradFR(x0)) <= tol  || i >= 100000
           break
       end
       i = i + 1;
    end
    sol = x0';
    nit = i;
end