function u=numerove(n,h,q,s,u)
g=h^2/12;
for i=2:1:n-1;
	A=1+g.*q(i-1);
	B=2-10*g.*q(i);
	C=1+g.*q(i+1);
	D=g.*(s(i+1)+s(i-1)+10*s(i));
	u(i+1)=(B*u(i)-A*u(i-1)+D)./C;
end
