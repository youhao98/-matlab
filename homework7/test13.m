% test13.m
clc;clear all

n=1000000;
i=0;
x_0=0;
a=1;
while i<=1000
    dx=rand(1,2);
    if dx(1,2)>0.5
        d_x(1,1)=-a.*dx(1,1);
    else
        d_x(1,1)=a.*dx(1,1);
    end
    x1=x_0+d_x(:,1);
    r=test13_1(x1)./test13_1(x_0);
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

x=zeros(1,n);
i=1;
while i<n
    dx=rand(1,2);
    if dx(1,2)>0.5
        d_x(1,1)=-a.*dx(1,1);
    else
        d_x(1,1)=a.*dx(1,1);
    end

    x1=x(:,i)+d_x(1,1);
    r=test13_1(x1)./test13_1(x(1,i));
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

z=hist(x,100);
X=linspace(min(min(x)),max(max(x)),100);
z=z.*1./sqrt(2.*pi)./max(z);
omega=test13_1(X);

bar(X,z,1)
hold on
plot(X,omega,'r-','linewidth',2)
ylabel('\omega(x)')
xlabel('x')