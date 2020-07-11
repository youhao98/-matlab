% test2.m
clc;clear all;
x=0:0.1:20;
n=length(x);
h=x(2)-x(1);
s=-0.5.*x.*exp(-1.*x);
q(1:n)=0;
u(1:n)=0;
u(1)=0;
u(2)=(1-0.5.*(h+2).*exp(-1.*h));

U=numerove(n,h,q,s,u);
y=1-0.5.*(x+2).*exp(-1.*x);
plot(x,U,'r*')
hold on
plot(x,y)
xlabel('r');ylabel('\phi')
