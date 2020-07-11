%weikuosanfa.m
clc;clear all
n=21;
x=linspace(0,1,n);
h=x(2)-x(1);
dt=0.0001;
p=dt/(h^2);
phi1=zeros(n,1);
phi2=phi1;

for i=2:n-1
	phi1(i)=x(i)-0.5;
end
plot(x,phi1)
pause(1)
eig=0;
eig_1=100;
while abs(eig-eig_1)>1e-6;
	for i=2:n-1
		phi2(i)=phi1(i)+p*(phi1(i-1)+phi1(i+1)-2*phi1(i));
	end
	phi2=nor(phi2,h);
% 	plot(x,phi2)
% 	pause(0.001)
    eig_1=eig;
    phi1=phi2;
	eig=myeig(phi1,h);
end
plot(x,phi2)
eig