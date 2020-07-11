% test8.m
clc;clear all
global e1;
tol=1e-6;de=0.0001; e1=-0.8500;
xturn=-sqrt(2*(e1+1));
[x1,UL]=ode45(@test,[-1,xturn],[0 0.0001]);
[x2,UR]=ode45(@test,[1,xturn],[0 0.0001]);
f0=UL(length(x1),2)-UR(length(x2),2);
while abs(de)>tol
	e1=e1+de;
	xturn=-sqrt(2*(e1+1));
	[x1,UL]=ode45(@test,[-1, xturn],[0 0.0001]);
	[x2,UR]=ode45(@test,[1 xturn],[0 -0.0001]);
	f1=UL(length(x1),2)-UR(length(x2),2);
	if(f0*f1<0)
		e1=e1-de;
		de=de/2;
	end
end	
e1
plot(x1,UL(:,1),'r',x2,UR(:,1),'b')
