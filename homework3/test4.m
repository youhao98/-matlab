%test4.m
clc;clear all;
x=0:0.01:1;
n=length(x);
h=x(2)-x(1);
tol=0.0001;
k=1;dk=1;
s(1:n)=0;
q(1:n)=k;
u(1:n)=0;
u(1)=0;
u(2)=0.01;
uu=numerove(n,h,q,s,u);
phiold=uu(n)
while(abs(dk)>tol)
	k=k+dk
	q(1:n)=k;
	uu=numerove(n,h,q,s,u);
	plot(x,uu,'r');axis([0 1 -1 1]); pause
	phi=uu(n);
	if(phi*phiold<0)
		k=k-dk;dk=dk./2;
	end
end

