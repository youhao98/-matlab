clear all;clc
f=@(x) x^2-5;
x=2.0;
fx0=f(x);
dx=0.5;
tol=1e-10;
i=0;
while (dx>tol)
	i=i+1
	x=x+dx;
	if(fx0.*f(x)<0)
		x=x-dx;dx=dx./2;
	end
end
format long
x
