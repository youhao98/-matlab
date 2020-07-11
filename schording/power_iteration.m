function [lambda,x]=power_iteration(A,x,k)
for j=1:k
	u=x/norm(x);
	x=A*u;
	lambda=u'*x;
end
