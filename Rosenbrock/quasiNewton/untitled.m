close all;

x = xitPasOpti;
y = zeros(size(x,1),1);
iter = zeros(size(x,1),1);

for i = 1:size(x,1)
   y(i) = evalFR(x(i,:)');
   iter(i) = i;
end
semilogx(iter,y);
hold on;

x = xitPasFixe;
y = zeros(size(x,1),1);
iter = zeros(size(x,1),1);

for i = 1:size(x,1)
   y(i) = evalFR(x(i,:)');
   iter(i) = i;
end
semilogx(iter,y);

x = xitPreCond;
y = zeros(size(x,1),1);
iter = zeros(size(x,1),1);

for i = 1:size(x,1)
   y(i) = evalFR(x(i,:)');
   iter(i) = i;
end
semilogx(iter,y);

x = xitNewton;
y = zeros(size(x,1),1);
iter = zeros(size(x,1),1);

for i = 1:size(x,1)
   y(i) = evalFR(x(i,:)');
   iter(i) = i;
end
semilogx(iter,y);

x = xitQuasiNewton;
y = zeros(size(x,1),1);
iter = zeros(size(x,1),1);

for i = 1:size(x,1)
   y(i) = evalFR(x(i,:)');
   iter(i) = i;
end
semilogx(iter,y);

legend('Pas Fixe','Pas Optimale','Precond','Newton','Quasi Newton')
