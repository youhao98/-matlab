t=0:dt:M;
N=length(t);
dt=t(2)-t(1);
v(1)=-60.156;
m(1)=0;
h(1)=0.4;
n(1)=0.4;

for i=1:N-1
	k11=fv(t(i),v(i),m(i),h(i),n(i),k);
	k21=fm(t(i),v(i),m(i),h(i),n(i));
	k31=fh(t(i),v(i),m(i),h(i),n(i));
	k41=fn(t(i),v(i),m(i),h(i),n(i));
	k12=fv(t(i)+dt./2,v(i)+dt./2.*k11,m(i)+dt./2.*k21,h(i)+dt./2.*k31,n(i)+dt./2.*k41,k);
	k22=fm(t(i)+dt./2,v(i)+dt./2.*k11,m(i)+dt./2.*k21,h(i)+dt./2.*k31,n(i)+dt./2.*k41);
	k32=fh(t(i)+dt./2,v(i)+dt./2.*k11,m(i)+dt./2.*k21,h(i)+dt./2.*k31,n(i)+dt./2.*k41);
	k42=fn(t(i)+dt./2,v(i)+dt./2.*k11,m(i)+dt./2.*k21,h(i)+dt./2.*k31,n(i)+dt./2.*k41);
	k13=fv(t(i)+dt./2,v(i)+dt./2.*k12,m(i)+dt./2.*k22,h(i)+dt./2.*k32,n(i)+dt./2.*k42,k);
	k23=fm(t(i)+dt./2,v(i)+dt./2.*k12,m(i)+dt./2.*k22,h(i)+dt./2.*k32,n(i)+dt./2.*k42);
	k33=fh(t(i)+dt./2,v(i)+dt./2.*k12,m(i)+dt./2.*k22,h(i)+dt./2.*k32,n(i)+dt./2.*k42);
	k43=fn(t(i)+dt./2,v(i)+dt./2.*k12,m(i)+dt./2.*k22,h(i)+dt./2.*k32,n(i)+dt./2.*k42);
	k14=fv(t(i)+dt,v(i)+dt.*k13,m(i)+dt.*k23,h(i)+dt.*k33,n(i)+dt.*k43,k);
	k24=fm(t(i)+dt,v(i)+dt.*k13,m(i)+dt.*k23,h(i)+dt.*k33,n(i)+dt.*k43);
	k34=fh(t(i)+dt,v(i)+dt.*k13,m(i)+dt.*k23,h(i)+dt.*k33,n(i)+dt.*k43);
	k44=fn(t(i)+dt,v(i)+dt.*k13,m(i)+dt.*k23,h(i)+dt.*k33,n(i)+dt.*k43);
	v(i+1)=v(i)+dt.*(k11+2.*k12+2.*k13+k14)./6;
	m(i+1)=m(i)+dt./6.*(k21+2.*k22+2.*k23+k24);
	h(i+1)=h(i)+dt./6.*(k31+2.*k32+2.*k33+k34);
	n(i+1)=n(i)+dt./6.*(k41+2.*k42+2.*k43+k44);
end



