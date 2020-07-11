clear all
format long
a=realmin;b=1;
N=100000001;
x=linspace(a,b,N);
h=x(2)-x(1);
s_si=0;
c_si=0;
s_tr=0;
c_tr=0;
c=2;
for i=2:1:N-1
	if(c==2)
		c=4;
	else
		c=2;
	end
	s_si=s_si+c.*fx1(x(i));
	c_si=c_si+c.*fx2(x(i));
end
s_si=(s_si+(fx1(x(1))+fx2(x(N)))).*h./3;
c_si=(c_si+(fx2(x(1)+fx2(x(N))))).*h./3;
for i=2:1:N-1
	s_tr=s_tr+fx1(x(i));
	c_tr=c_tr+fx2(x(i));
end
s_tr=(s_tr+0.5.*(fx1(x(1))+fx1(x(N)))).*h;
c_tr=(c_tr+0.5.*(fx2(x(1))+fx2(x(N)))).*h;
fprintf(' S_trape=%12.10f \n S_simpson=%12.10f\n C_trape=%12.10f \n C_simpsom=%12.10f \n',s_tr,s_si,c_tr,c_si)
