%test3.m
clc;clear all
A=[5,-2,1;1,5,-3;2,1,-5];
B=[4,2,-11];
n=length(B);
x1=ones(1,n);
x2=zeros(1,n);
err=10;
step=0;
a=diag(A);
g=-A./a;
d=B./(a.');
while err>1e-6
	x2=x1*(g.')+d-x2.*(diag(g).');
	err=max(abs(x2-x1));
	step=step+1;
    x1=x2;
end
x=x2
step