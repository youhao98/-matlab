u=0:0.001:4;
N=length(u)
x=ones(400,N);
x(1,:)=0.6*x(1,:);
for j=1:400
	x(j+1,:)=u.*(x(j,:)-x(j,:).^2);
end
plot(u,x(150:end,:),'b.','MarkerSize',0.5)
title('分叉图')
