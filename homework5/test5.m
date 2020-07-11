%test5.m
clc;clear all
A=[5,-2,1;1,5,-3;2,1,-5];
B=[4,2,-11];
n=length(B);
x1=ones(1,n);
err=10;
step=0;
a=diag(A);
g=-A./a;
d=B./(a.');
ome=0.95;
while err>1e-6
    x2=x1;
    for i=1:n
        k=x1*(g.')+d-x1.*(diag(g).');
        x1(i)=k(i);
    end
    x1=ome.*x1+(1-ome).*x2;
	err=max(abs(x2-x1));
	step=step+1;
end
x=x1
step