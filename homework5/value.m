function lambda=value(n,A)
	lambda=-4;
	dlam=1;
	x1=value_P(lambda,n,A);
	while (abs(dlam)>1e-8)
		lambda=lambda+dlam;
		x2=value_P(lambda,n,A);
		if x1.*x2<0
			lambda=lambda-dlam;
			dlam=dlam./2;
		end
	end
