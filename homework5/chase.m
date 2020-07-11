function x=chase(a,b,c,f)
	a=[0 a];
	c=[c 0];
	y(1)=f(1)./b(1);
	d=b(1);
	n=length(f);
	for i=2:n
		be(i-1)=c(i-1)/d;
		d=b(i)-a(i).*be(i-1);
		y(i)=(f(i)-a(i).*y(i-1))./d;
	end
	x(n)=y(n);
	for i=n-1:-1:1
		x(i)=y(i)-be(i).*x(i+1);
	end
