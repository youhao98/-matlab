% test3.m
clc;clear all
N=100000;
y=rand(1,N);
x=-log(1-y);
m=max(x);
X=linspace(0,m,100);
Omega=exp(-X);
Y=hist(x,100)./N*100/m;
bar(X,Y,1)
hold on
plot(X,Omega,'r-','LineWidth',2)
ylabel('\omega(x)')
xlabel('x')

