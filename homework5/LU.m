function x=LU(A,B)
n=length(A);
U=zeros(n);
L=eye(n);
U(1,:)=A(1,:);
L(:,1)=A(:,1)./U(1,1);
for i=2:n
	for j=i:n
		U(i,j)=A(i,j)-L(i,1:i-1)*U(1:i-1,j);
	end
	for j=i+1:n
		L(j,i)=(A(j,i)-L(j,1:i-1)*U(1:i-1,i))./U(i,i);
	end
end
y(1)=B(1);
for i=2:n
	s=0;
	for k=1:i-1
		s=s+L(i,k).*y(k);
	end
	y(i)=B(i)-s;
end
B(n)=y(n)./U(n,n);
for i=n-1:-1:1
	s=0;
	for k=i+1:n
		s=s+U(i,k).*B(k);
	end
	B(i)=(y(i)-s)./U(i,i);
end
x=B;
