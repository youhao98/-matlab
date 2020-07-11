clc;clear all
M=10000;
dt=0.05;
for H=1:300
    k=H./10;
    t1=0;
    hh
    L=0;
    m1=1;
    for m=400:N-1
        if v(m-1)<v(m) & v(m)>v(m+1)
            L=L+1;
            if L==1
                t0=t(m);
                m0=m;
            end
            if L==500
                t1=t(m);
                m1=m;
                break
            end
        end
    end
    if t1==0
        f(H)=0;
    else
        T=t1-t0;
        f(H)=499./T;
    end
    if v(m0)./v(m1)>3
        f(H)=0;
    end
end
f=f*1000;
T1=0.1:0.1:30;
plot(T1,f)
xlabel('I(\mu A/cm^2)'); ylabel('f(Hz)');