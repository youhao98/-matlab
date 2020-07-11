%test1.m
clc;clear all
n=100;
x=linspace(0,1,n);
h=x(2)-x(1);
s(1:n)=0;
u(1:n)=0;
u(1)=1;
u(2)=1-2.*(pi.^2).*h.^2;
q(1:n)=4*pi.^2;

U=numerove(n,h,q,s,u);
y=cos(2.*pi.*x);
plot(x,U,'r*');
hold on
plot(x,y);
xlabel('x');ylabel('y')
