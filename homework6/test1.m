%test1.m
clc;clear all
h=0.1;
m=4./h+1;
n=3./h+1;
eps=0.00001;
omega=1.25;
A=zeros(m,n);
x=linspace(0,4,m);
y=linspace(0,3,n);
A(:,1)=sin(pi.*x/4);
A(:,n)=0;
A(1,:)=y.*(y-3);
A(m,:)=0;

flag2=10;
while(flag2>eps)
	flag2=0;
	for i=2:m-1
		for j=2:n-1
			ref=A(i,j);
			A(i,j)=0.25*omega*(A(i,j-1)+A(i,j+1)+A(i-1,j)+A(i+1,j))+(1-omega).*A(i,j);
			flag1=abs(A(i,j)-ref);
			flag2=flag1.*(flag1>flag2)+flag2.*(flag1<=flag2);
		end
    end
end

figure
surf(A)
figure
mesh(A)
figure
contour(A)
figure
imshow(A)
