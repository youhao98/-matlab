syms C M1 M2 K L a omegao omegaa
omegao=sqrt(C/(M1*M2)*((M1+M2)+sqrt(M1^2+M2^2+M1*M2*cos(K*a))));
omegaa=sqrt(C/(M1*M2)*((M1+M2)-sqrt(M1^2+M2^2+M1*M2*cos(K*a))));
domegao=diff(omegao,'K');
domegaa=diff(omegaa,'K');
Do=L/(2*pi)*2/domegao;
Da=L/(2*pi)*2/domegaa;
D1o=inline(Do);
D1a=inline(Da);
omeo=inline(omegao);
omea=inline(omegaa);
C=2;
M1=1;
M2=1.64;
a=1;
L=5;
K=linspace(-pi,pi,10000);
oo=omeo(C,K,M1,M2,a) ;
oa=omea(C,K,M1,M2,a);
do=D1o(C,K,L,M1,M2,a);
da= D1a(C,K,L,M1,M2,a) ;
plot(oo,do,'b.')
hold on;
plot(oa,da,'b.');
set(gca,'Xlim',[0 3])
set(gca,'Ylim',[0 25])
set(gca,'XTick',[1.2070 2.242 2.4316])
set(gca,'YTick',[0 100])
set(gca,'XTickLabel',['\omega_m'])
xlabel('\omega')
ylabel('D(\omega)')