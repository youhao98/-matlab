% test10.m
clc,clear all

dl=1;
x=0:dl:20;
y=0:dl:10;
i_y=length(y);
i_x=length(x);
m=10000;
u=zeros(i_y,i_x);

u(1,:)=0;
u(i_y,:)=0;
u(:,1)=0;
u(:,i_x)=100;
for i=2:i_y-1
	for j=2:i_x-1
		for i_m=1:m
			xtem=i;
			ytem=j;
			while xtem>1 && xtem<i_y && ytem<i_x && ytem>1
				omega=rand;
				if omega>0.75
					xtem=xtem+1;
                elseif omega>0.5
					xtem=xtem-1;
                elseif omega>0.25
					ytem=ytem+1;
				else
					ytem=ytem-1;
				end
			end
			utem(i_m)=u(xtem,ytem);
		end
		u(i,j)=1./m.*sum(utem);
	end
end

meshz(x,y,u)
xlabel('x')
ylabel('y')
u1=u(6,6)
u1ex=1.0943
u2=u(6,11)
u2ex=5.4885
u3=u(6,16)
u3ex=26.0944
