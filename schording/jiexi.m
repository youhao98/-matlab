%jiexifa.m
clc;clear all
x=linspace(0,1,2001);
phi1=sqrt(2)*sin(pi.*x);
phi2=sqrt(2)*sin(2*pi.*x);
phi3=sqrt(2)*sin(3*pi.*x);
h=x(2)-x(1);
phi1=nor(phi1,h);
phi2=nor(phi2,h);
phi3=nor(phi3,h);
plot(x,phi1,x,phi2,x,phi3);
legend('基态','第一激发态','第二激发态');
e1=pi^2
e2=2^2*pi^2
e2=3^2*pi^2