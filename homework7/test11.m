% test11.m
clc;clear all

a=2;
b=3;

n=1000000;
x=rand(1,n);
x=a+(b-a).*x;
fx=test11_1(x);
m=length(find(fx<=0));
p=m./n;
if test11_1(a)<0
	x_root=a+(b-a)*p
else
	x_root=a+(b-a)*(1-p)
end
x_root_ex=sqrt(5)
