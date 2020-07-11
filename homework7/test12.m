% test12.m
clc;clear all

a=0;
b=pi./2;

n=1000000;
x=rand(1,n);
x=a+(b-a).*x;
fx=test12_1(x);
m=length(find(fx<=0));
p=m./n;
if test12_1(a)<0
	x_root=a+(b-a)*p
else
	x_root=a+(b-a)*(1-p)
end

x_root_ex=fzero(@(x)exp(-(x.^3))-tan(x)+800,1.57)
