%test7.m
clc;clear all
A=diag(-2*ones(10,1))+diag(ones(9,1),1)+diag(ones(9,1),-1);
n=length(A);
for i=1:n
	rvalue(i)=-4*(sin(i.*pi./(2.*(n+1)))).^2;
end
value=value(n,A);

rvalue
value
