% test5.m
clc;clear all

n=10000;
x=rand(2,n);
m=0;
for i=1:n
	y=1./(1+x(1,i).^2);
	if y>x(2,i)
		m=m+1;
	end
end
s=m/n
