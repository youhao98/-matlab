clc;clear all
f = @(t,y) [ ex2dx(t,y(1),y(2)); ...
               ex2dy(t,y(1),y(2));];
[t,Y]=ode45(f,[0 2000],[1 1]);
plot(Y(:,1),Y(:,2))