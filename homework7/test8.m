% test8.m
clc;clear all
n=10000000;
x=rand(2,n);
y=1-x(1,:).^2-x(2,:).^2;
theta_1=theta(y);

I=1/n.*sum(theta_1).*4
