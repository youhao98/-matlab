% test8.m
clc;clear all
global e1;
tol=1e-6;de=1; e1=1;
xturn=0.5;
[x1,UL]=ode45(@test,[0,xturn],[0 0.0001]);
[x2,UR]=ode45(@test,[1,xturn],[0 0.0001]);
f0=UL(length(x1),2)-UR(length(x2),2);
while abs(de)>tol
	e1=e1+de;
	[x1,UL]=ode45(@test,[0, xturn],[0 0.0001]);
	[x2,UR]=ode45(@test,[1 xturn],[0 -0.0001]);
	f1=UL(length(x1),2)-UR(length(x2),2);
	if(f0*f1<0)
		e1=e1-de;
		de=de/2;
	end
end
phi=zeros(length(UL(:,1))+length(UR(:,1)),1);
phi(:,1)=[UL(:,1);UR(:,1)];
x=[x1;x2];
e1
plot(x,phi)
