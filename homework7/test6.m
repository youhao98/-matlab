% test6.m
clc;clear all
n=1000000;
r=rand(3,n);
m=0;
for i=1:n
	f1=sum(r(:,i).^2);
	f2=sum(r(1:2,i).^2);
	if f1<0.5^2 && f2>0.3^2
		m=m+1;
	end
end
s=m/n*8*0.5^3
