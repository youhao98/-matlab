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

imax=0;
imin=0;
idelta=0;
u2=u;
kk=1;
umax=0;


for i=1:n-1
	if i<200
        u(:,1)=1;
    end
    if u(floor(m/2),floor(m/2))>0.9 && kk==1
        u(1:floor(m/2),:)=0;
        kk=2;
    end
    if i<3000;
        if u(150,150)<u(155,150) && u(150,150)<u(145,150)
            imin=i;
        end
        if u(150,150)>u(155,150) && u(150,150)>u(145,150)
            imax=i;
        end
        idelta=abs(imax-imin);
    end
    if i>4500 && i<4500+2.*idelta
        u2=u2+u;
    end
        
    if i>5000
        for i_i=1:m
            for j_j=1:m
                if u2(i_i,j_j)>umax
                    i_imax=i_i;
                    j_jmax=j_j;
                    umax=u2(i_i,j_j);
                end
            end
        end
        for jj=1:m
            if (jj-j_jmax)^2<1
                 u(:,jj)=0;
            end
        end
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
	if i==5000
        subplot(2,3,1)
		imshow(u)
        xlabel('t=0s','fontsize',10)
    end
    if i==5300
        subplot(2,3,2)
        imshow(u)
        xlabel('t=6s','fontsize',10)
    end
    if i==5600
        subplot(2,3,3)
        imshow(u)
        xlabel('t=12s','fontsize',10)
    end
    if i==6000
        subplot(2,3,4)
        imshow(u)
        xlabel('t=20s','fontsize',10)
    end
    if i==6400
        subplot(2,3,5)
        imshow(u)
        xlabel('t=28s','fontsize',10)
    end
    if i==6800
        subplot(2,3,6)
        imshow(u)
        xlabel('t=36s','fontsize',10)
        pause
    end
    
    u=u1;
    v=v1;
end