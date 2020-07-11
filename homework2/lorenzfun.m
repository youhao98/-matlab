function dy=lorenzfun(t,y);
dy=zeros(3,1);
dy(1)=10*(y(2)-y(1));
dy(2)=y(1)*(28-y(3))-y(2);
dy(3)=y(1)*y(2)-8*y(3)/3;
