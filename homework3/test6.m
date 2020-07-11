%test6.m
clc
clear all
solinit=bvpinit(linspace(0,20,40),[1;0]);
sol=bvp4c('twoode6','twobc6',solinit);
x=linspace(0,4);
y1=deval(sol,x);
plot(x,y1(1,:))

