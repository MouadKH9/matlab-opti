close all;
[X,Y] = meshgrid(-3:0.1:3,-3:0.1:3);
Z = (X - 1).^2 + 10 * (X.^2 - Y).^2;
F = gradient(Z);
contour(X,Y,Z,100)
hold on
quiver(X,Y,Z,F)
plot(xitPasFixe(:,1),xitPasFixe(:,2))
plot(xitPasOpti(:,1),xitPasOpti(:,2))
plot(xitPreCond(:,1),xitPreCond(:,2))
plot(xitNewton(:,1),xitNewton(:,2))
plot(xitQuasiNewton(:,1),xitQuasiNewton(:,2))
legend('Contour','Pas Fixe','Pas Optimale','Precond','Newton','Quasi Newton')