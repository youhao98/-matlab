k=2;
while lambda(k)<0
    if(lambda(k)>lambda(k+1)&&lambda(k)>lambda(k-1))
        fprintf('\n r1=%15.13f,s=%15.13f\n',mu(k),lambda(k))
    end
    if (lambda(k)>-0.00005)
		fprintf('\n r1=%15.13f,s=%15.13f\n',mu(k),lambda(k))
    end
    k=k+1;
end