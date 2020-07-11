function x=rk4(n,h,q,s,y,z)

for i=1:4:n-4
	k1=h.*(-q(2.*i)).*y(i)+s(2.*i);
    l1=h.*z(i);
	k2=h.*(-q(2.*i+1)).*(y(i)+0.5*k1)+s(2.*i+1);
    l2=h.*(z(i)+0.5*l1);
	k3=h.*fx1(x(i)+0.5*h,y(i)+0.5.*k2);
    l3=h.*fx1(x(i)+0.5*h,y(i)+0.5.*k2);
	k4=h.*fx1(x(i)+h,y(i)+k3);
    l4=h.*fx1(x(i)+h,y(i)+k3);
	y(i+1)=y(i)+1/6.*(k1+2*k2+2*k3+k4);
    z(i+1)=y(i)+1/6.*(l1+2*l2+2*l3+l4);
end