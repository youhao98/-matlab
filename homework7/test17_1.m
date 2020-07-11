function k=test17_1(M,s)
d=1;
a=(M.*s).^(1/3);
b=(M.*s^(-2)).^(1/3);

N_0=100000;
r0=rand(N_0,3);
r0=r0*[a 0 0;0 a 0;b 0 0];
phi1=2.*pi.*rand(N_0,1);
phi2=2.*pi.*rand(N_0,1);
cote1=2.*rand(N_0,1)-ones(N_0,1);
site1=sqrt(1-cote1.^2).*(-1).^(floor(2.*rand(N_0,1)));
cote2=2.*rand(N_0,1)-ones(N_0,1);
site2=sqrt(1-cote2.^2).*(-1).^(floor(2.*rand(N_0,1)));
d1=0.2.*rand(N_0,1);
d2=0.2.*rand(N_0,1);
r1(:,1)=r0(:,1)+d1.*site1.*cos(phi1);
r1(:,2)=r0(:,2)+d1.*site1.*sin(phi1);
r1(:,3)=r0(:,3)+d1.*cote1;
r2(:,1)=r0(:,1)+d2.*site2.*cos(phi2);
r2(:,2)=r0(:,2)+d2.*site2.*sin(phi2);
r2(:,3)=r0(:,3)+d2.*cote2;

f11_1=find(r1(:,1)<a);
f11_2=find(r1(:,1)>0);
f12_1=find(r1(:,2)<a);
f12_2=find(r1(:,2)>0);
f13_1=find(r1(:,3)<b);
f13_2=find(r1(:,3)>0);

f21_1=find(r2(:,1)<a);
f21_2=find(r2(:,1)>0);
f22_1=find(r2(:,2)<a);
f22_2=find(r2(:,2)>0);
f23_1=find(r2(:,3)<b);
f23_2=find(r2(:,3)>0);

f11=intersect(f11_1,f11_2);
f12=intersect(f12_1,f12_2);
f13=intersect(f13_1,f13_2);
f21=intersect(f21_1,f21_2);
f22=intersect(f22_1,f22_2);
f23=intersect(f23_1,f23_2);

f1_2=intersect(f11,f12);
f1=intersect(f1_2,f13);
f2_2=intersect(f21,f22);
f2=intersect(f2_2,f23);

N=length(f1)+length(f2);

k=N/N_0;
