% test5.m
clc;clear all
solinit=bvpinit(linspace(0,4,5),[1;0]);
sol=bvp4c('twoode','twobc',solinit);
x=linspace(0,4);
y1=deval(sol,x);
plot(x,y1(1,:))
