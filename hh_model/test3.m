clc;clear all
for j=1:5000
    k=j./100;
    dt=0.05;
    M=1000;
    hh
    L=0;
    K1=0;
    nNa=- 120*m.^3.*h.*(v-55);
    for K=400:N-1
            if v(K)>v(K-1) & v(K)>v(K+1)
                L=L+1;
                if L==1
                    K0=K;
                end
                if L==50
                    K1=K;
                    break
                end
            end
    end
    c=2;
    sum2=0;
    if K1==0
        sum1(j)=0;
    else
%         sum1(j)=(sum(nNa(K0+1:K1-1))+(nNa(K0)+nNa(K1)).*0.5).*dt./9./(1.6e-10);
        for i=K0+1:1:K1-1
            if(c==2)
                c=4;
            else
                c=2;
            end
            sum2=sum2+c.*nNa(i);
        end
        sum1(j)=(sum2+(nNa(K0)+nNa(K1))).*dt./3./49./(1.6e-10);
    end
end
i=0.01:0.01:50;
plot(i,sum1)
xlabel('Iapp/\mu A)'); ylabel('n(Na)');
title('Number of Na^+ vs Iapp');