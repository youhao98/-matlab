%test7.m
clc;clear all

a=1;
omega=6;
L=1;

n=100;
x=linspace(0,L,n);
h=x(2)-x(1);
dt=0.002;
tmax=10;
t=0:dt:floor(tmax/dt).*dt;
m=length(t);
P=(dt.*a./h).^2;
u=zeros(n,m);
u_1=zeros(n,m);

u(:,1)=0;
u(:,2)=0;

u(1,:)=0;
u(n,:)=2.*sin(omega.*t);

for k=2:m-1
	for i=2:n-1
		u(i,k+1)=2.*(1-P).*u(i,k)+P.*(u(i+1,k)+u(i-1,k))-u(i,k-1);
	end
% 	u_1(:,k)=2.*(sin(omega.*x./a)./sin(omega.*L./a)).*sin(omega.*k.*dt);
% 	u_2=zeros(1,n);
% 	for l=2:n
% 	u_1(l,k)=2.*(sin(omega.*((l-1).*h)./a)./sin(omega.*L./a)).*sin(omega.*k.*dt);
% 		for j=1:50
% 			u_2(l)=u_2(l)+((-1).^(j+1))./((omega./a)^2+(j.*pi./L)^2).*sin(j.*pi.*a.*(k.*dt)./L).*sin(j.*pi.*((l-1).*h)./L);
% 		end
% 	end
% 	u_2=4.*omega./(a.*L).*u_2;
% 	u_1(:,k)=u_1(:,k)+u_2(:);
%	subplot(2,1,1)
% 	cla
	plot(x,u(:,k))
	axis([0 L -4 4]);
	xlabel('x')
	ylabel('u')
% 	hold on
%	title('数值解')
%	subplot(2,1,2)
% 	plot(x,u_1(:,k))
%	axis([0 L -10 10]);
%	xlabel('x')
%	ylabel('u')
%	title('解析解')
	pause(0.0001)
end

%[T,X]=meshgrid(t,x);
%u_ex1=2.*(sin(omega.*X./a)./sin(omega.*L./a)).*sin(omega.*T);
%u_ex2=0;
%for j=1:1000
%	u_ex2=u_ex2+((-1).^(j+1))./((omega./a).^2+(j.*pi./L).^2).*sin(j.*pi.*a.*T./L).*sin(j.*pi.*X./L);
%end
%u_ex2=4.*omega./(a.*L).*u_ex2;
%u_ex=u_ex1+u_ex2;

figure
% subplot(2,1,1)
% meshz(t,x,u_1)
% xlabel('t');
% ylabel('x');
% zlabel('u');
% title('解析解')
% subplot(2,1,2)
meshz(t,x,u)
xlabel('t')
ylabel('x');
zlabel('u');
title('数值解')


