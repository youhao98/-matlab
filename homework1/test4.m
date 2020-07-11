clc;clear all
x=linspace(0,2.*pi,360);
y=sin(x);
dx=diff(x);
dy=diff(y);
dyx=dy./dx;
plot(x,y,'r--')
hold on
n=length(x);
plot(x(1:n-1),dyx,'b-')
legend('sin(x)','dsin(x)/dx')
