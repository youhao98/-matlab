clc;clear all
h=0.5;
x=0:h:100;
y=0:h:100;
dt=0.02;
t_max=100000;
m=length(x);
n=floor(t_max./dt);
u=zeros(m,m);
u1=u;
v=zeros(m,m);
v1=v;
epis=0.05;
a=0.84;
b=0.07;

kk=1;

for i=1:n-1
	if i<200
        u(:,1)=1;
    end
    if u(floor(m/2),floor(m/2))>0.9 && kk==1
        u(1:floor(m/2),:)=0;
        kk=2;
    end
    if i>3000
        u(:,1)=1.*sin(2.*i.*dt);
    end

    
	for j=2:m-1
		for k=2:m-1
			dieu=(u(j+1,k)+u(j,k+1)+u(j-1,k)+u(j,k-1)-4.*u(j,k))./h.^2;
			u1(j,k)=(-1./epis.*u(j,k).*(u(j,k)-1).*(u(j,k)-(v(j,k)+b)./a)+dieu).*dt+u(j,k);
			v1(j,k)=(f(u(j,k))-v(j,k)).*dt+v(j,k);
		end
	end
	if mod(i,2)==1
		u1(:,1)=(4.*u(:,2)-u(:,3))./3;
		u1(:,m)=(4.*u(:,m-1)-u(:,m-2))./3;
		u1(m,:)=(4.*u(m-1,:)-u(m-2,:))./3;
		u1(1,:)=(4.*u(2,:)-u(3,:))./3;
	else
		u1(1,:)=(4.*u(2,:)-u(3,:))./3;
		u1(m,:)=(4.*u(m-1,:)-u(m-2,:))./3;
		u1(:,1)=(4.*u(:,2)-u(:,3))./3;
		u1(:,m)=(4.*u(:,m-1)-u(:,m-2))./3;
	end
	if i==3000
        subplot(2,3,1)
		imshow(u)
        xlabel('t=0s','fontsize',10)
    end
    if i==8500
        subplot(2,3,2)
        imshow(u)
        xlabel('t=110s','fontsize',10)
    end
    if i==14200
        subplot(2,3,3)
        imshow(u)
        xlabel('t=224s','fontsize',10)
    end
    if i==16600
        subplot(2,3,4)
        imshow(u)
        xlabel('t=272s','fontsize',10)
    end
    if i==20600
        subplot(2,3,5)
        imshow(u)
        xlabel('t=352s','fontsize',10)
    end
    if i==31000
        subplot(2,3,6)
        imshow(u)
        xlabel('t=560s','fontsize',10)
        pause
    end
    
    u=u1;
    v=v1;
end