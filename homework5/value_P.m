function p=value_P(lambda,n,A)
	p(1)=A(1,1)-lambda;
	p(2)=(A(2,2)-lambda).*p(1)-A(1,2).^2;
	for i=3:n
		p(i)=(A(i,i)-lambda).*p(i-1)-A(i,i-1).^2.*p(i-2);
	end
	p=p(n);
