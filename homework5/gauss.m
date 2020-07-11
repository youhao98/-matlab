function gauss=gauss(A,B)
n=length(A);
for i=1:n-1
    for j=n:-1:i+1
        if abs(A(j,i))>abs(A(j-1,i))
            t=A(j,:);
            q=B(j);
            A(j,:)=A(j-1,:);
            B(j)=B(j-1);
            A(j-1,:)=t;
            B(j-1)=q;
        end
    end
    B(i)=B(i)./A(i,i);
    A(i,:)=A(i,:)./A(i,i);
    for k=i+1:n
        B(k)=B(k)-B(i).*A(k,i);
        A(k,:)=A(k,:)-A(i,:).*A(k,i);
    end
end
B(n)=B(n)/A(n,n);
for k=1:n-1
     i=n-k;
     s=0;
   for j=i+1:n
        s=s+A(i,j)*B(j);
   end
   B(i)=B(i)-s;
end
gauss=B;
