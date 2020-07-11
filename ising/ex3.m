clc;clear all;close;
B=0;
n=100;
x=0:n;
y=0:n;
s_=ones(n,n);
s=ones(n+2,n+2);
imax=5000;
F=zeros(n+2,n+2);
dJ=0.1;
hmax=1./dJ;
%vio=VideoWriter('test1.avi');
%open(vio)

for h=1:hmax
	J(h)=h.*dJ;
    vio=VideoWriter('ttt')
	open(vio)

    s=ones(n+2,n+2);
for ii=1:n+2
	for jj=1:n+2
		qqq=rand;
		if ii+jj<n
			s(ii,jj)=-1.*s(ii,jj);
		end
	end
end
imshow(s)
pause

    for i=1:imax
        s(1,:)=s(n+1,:);
        s(n+2,:)=s(2,:);
        s(:,1)=s(:,n+1);
        s(:,n+2)=s(:,2);
        for j=2:n+1
            for k=2:n+1
                F(j,k)=s(j-1,k-1)+s(j-1,k+1)+s(j+1,k-1)+s(j+1,k+1);
                r=exp(-2.*s(j,k).*(J(h).*F+B));
                eta=rand;
                if r>eta
                    s(j,k)=-1.*s(j,k);
                end
            end
        end

        s_=s(2:n-1,2:n-1);
%         if mod(i,10)==0
%         figure
        imshow(s_)
%         axis normal
%         set(gca,'position',[0 0 1 1])
        title(num2str(J(h)))
%         end
		frame=getframe(gcf);
		writeVideo(vio,frame);
%	 end
     	 end
	M(h)=sum(sum(s_));
	close(vio)
end
figure
plot(J,M,'r-')
xlabel('J')
ylabel('M')
%close(vio);
