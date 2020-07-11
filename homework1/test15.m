clc;clear all
f=@(x) x.^2-5;
x0=2.0;
x1=2.4;
tol=1e-10;
i=0;
dx=1;
while(dx>tol)
	i=i+1
	x2=x1-f(x1).*(x1-x0)./(f(x1)-f(x0));
	dx=abs(x2-x1);
	x0=x1;
	x1=x2;
end
x1
