%juzhenfa.m
clc;clear all
n=201;
x=linspace(0,1,n);
h=x(2)-x(1);
H=zeros(n,n);
for i=2:n-1;
	for j=1:n;
		if(i==j)
			H(i,j)=2/h^2;
        end
        if(i-1==j || i+1==j)
            H(i,j)=-1/h^2;
        end
	end
end
H(1,1)=2/h^2;
H(n,n)=2/h^2;
H(2,1)=-1/h^2;
H(n-1,n)=-1/h^2;

u=ones(n,1);

s=9;
k=1000;
[lambda,u]=invpowerit(H,u,s,k);

phi=nor(u,h);
plot(x,phi)
lambda