% test2.m
clc;clear all
N=15000;
a=5.29e-2;

theta=2.*pi.*rand(1,N);

r=zeros(1,N);
i=1;
while i<=N
        x1=0.25.*rand;
        y1=rand;
        omega=(4/a.^3.*x1.^2.*exp(-2./a.*x1));
        if y1<omega*4
                r(i)=x1;
                i=i+1;
        end
end

[X,Y]=pol2cart(theta,r);
plot(X,Y,'r.','markersize',1)
axis equal
rr=0:0.001:0.3;
D=4/a.^2*rr.^2.*exp(-2/a*rr);
figure
plot(rr,D)
xlabel('r');
ylabel('D')
