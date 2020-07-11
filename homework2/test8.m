[T,Y]=ode45('lorenzfun',[0 14],[5 20 10]);
plot3(Y(:,1),Y(:,2),Y(:,3))
