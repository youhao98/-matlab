%test7.m
lambda=15
solinit=bvpinit(linspace(0,pi,10),'mat4init',lambda);
sol=bvp4c('mat4ode','mat4bc',solinit);
xint=linspace(0,pi);
Sxint=deval(sol,xint);
figure;
plot(xint,Sxint(1,:));
axis([0 pi -1 1.1])
xlabel('x');
ylabel('solution y')
