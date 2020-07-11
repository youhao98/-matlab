%clc;clear;close;
%h=0.5;
%x=0:h:100;
%y=0:h:100;
%dt=0.02;
%t_max=5000;
%m=length(x);
%n=floor(t_max./dt);
%u=zeros(m,m);
%u1=u;
%v=zeros(m,m);
%v1=v;
% % % % % % % % 位置一
%epis=0.01;

%a=0.84;
%b=0.07;
% % % % % % % % 位置二
%kk=1;

vio=VideoWriter('test05.avi');

open(vio);
for i=82726:n-1

% % % % % % % % 位置三
    if i<200
        u(:,1)=1;
    end
    if u(floor(m/2),floor(m/2))>0.9 && kk==1
        u(1:floor(m/2),:)=0;
        kk=2;
    end
%    if i>150.*50
%	    epis=0.01;
%    end
%    if i>10000
%        u(:,1)=1.*sin(10.*i.*dt);
%        u(:,m)=1.*sin(10.*i.*dt);
%        u(1,:)=1.*sin(10.*i.*dt);
%        u(m,:)=1.*sin(10.*i.*dt);
%    end
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
    if mod(i,2)==0
 		imshow(u);
% 		axis([0 100 0 100 0 2])
		title(num2str(i.*dt))
		frame=getframe(gcf);
		writeVideo(vio,frame);
    end
    u=u1;
    v=v1;
end
close(vio);
