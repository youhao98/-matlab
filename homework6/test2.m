%test2.m
clc;clear all
a=1;b=1;
h=0.01;
m=a./h;
n=b./h;
eps=1e-8;
omega=2.*sqrt(2).*pi*sqrt(1./n.^2+1./m.^2);
A=zeros(n,m);
x=linspace(0,a,m);
y=linspace(-b./2,b./2,n);
[X,Y]=meshgrid(x,y);
f=-X.^2.*Y;

flag2=10;
step=0;
while(flag2>eps)
	flag2=0;
	for i=2:n-1
		for j=2:m-1
			ref=A(i,j);
			A(i,j)=0.25*omega*(A(i,j-1)+A(i,j+1)+A(i-1,j)+A(i+1,j)-h.^2.*f(i,j))+(1-omega).*A(i,j);
			flag1=abs(A(i,j)-ref);
			flag2=flag1.*(flag1>flag2)+flag2.*(flag1<=flag2);
		end
    end
    step=step+1;
end

u=X.*Y./12.*(a.^3-X.^3);
for n=1:100
    u1=a.^4.*b.*((-1)^n.*n.^2.*pi^2+2-2.*(-1).^n);
    u2=n.^5.*pi.^5.*sinh(n.*pi.*b./(2.*a));
    u3=sinh(n.*pi.*Y).*sin(n.*pi.*x./a);
    u=u+u1./u2.*u3;
end

subplot(2,4,1)
surf(x,y,A)
title('数值解图像')
subplot(2,4,2)
surf(x,y,u)
title('解析解图像')
subplot(2,4,3)
mesh(x,y,A)
title('数值解图像')
subplot(2,4,4)
mesh(x,y,u)
title('解析解图像')
subplot(2,4,5)
contour(x,y,A)
title('数值解图像')
subplot(2,4,6)
contour(x,y,u)
title('解析解图像')
subplot(2,4,7)
imshow(A,[])
title('数值解图像')
subplot(2,4,8)
imshow(u,[])
title('解析解图像')
