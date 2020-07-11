% test14.m
clc;clear all

n=1000000;
i=0;
x_0=[0;0];
a=1;
while i<=1000
    dx=rand(2,2);
    if dx(1,2)>0.5
        d_x(1,1)=-a.*dx(1,1);
    else
        d_x(1,1)=a.*dx(1,1);
    end
    if dx(2,2)>0.5
        d_x(2,1)=-a.*dx(2,1);
    else
        d_x(2,1)=a.*dx(2,1);
    end
    x1=x_0+d_x(:,1);
    r=test14_1(x1(1,1),x1(2,1))./test14_1(x_0(1,1),x_0(2,1));
    if r>1
        x_1=x1;
        i=i+1;
        x_0=x_1;
    else
        el=rand;
        if el<r
               x_1=x1;
               i=i+1;
               x_0=x_1;
        end
    end
end

x=zeros(2,n);
i=1;
while i<n
    dx=rand(2,2);
    if dx(1,2)>0.5
        d_x(1,1)=-a.*dx(1,1);
    else
        d_x(1,1)=a.*dx(1,1);
    end
    if dx(2,2)>0.5
        d_x(2,1)=-a.*dx(2,1);
    else
        d_x(2,1)=a.*dx(2,1);
    end

    x1=x(:,i)+d_x;
    r=test14_1(x1(1,1),x1(2,1))./test14_1(x(1,i),x(2,i));
    if r>1
            x(:,i+1)=x1;
            i=i+1;
    else
            el=rand;
            if el<r
                   x(:,i+1)=x1;
                   i=i+1;
            end
    end
end

x=x.';
hist3(x,[100 100])
z=hist3(x,[100 100]);
X=linspace(min(min(x)),max(max(x)),100);
Y=linspace(min(min(x)),max(max(x)),100);
z=z.*1./(sqrt(2.*pi).*2.*3)./max(max(z));
[X1, Y1]=meshgrid(X,Y);
omega=test14_1(X1,Y1);
subplot(2,1,1)
meshz(X1,Y1,z)
xlabel('x')
ylabel('y')
zlabel('\omega(x)')
subplot(2,1,2)
meshz(X1,Y1,omega)
zlabel('\omega(x)')
xlabel('x')
ylabel('y')