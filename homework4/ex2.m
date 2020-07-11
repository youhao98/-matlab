%用球面波叠加得到平面波
clc;clear all
[X,Z]=meshgrid(0.05:0.1:10);
figure
g=cos(X);
contour(g)
meshc(X,Z,g)
xlabel('Z')

[Q,R]=cart2pol(X,Z);
sqrtR=sqrt(pi/2./R);
Leg0=legendre(0,cos(Q));
Bes0=sqrtR.*besselj(0,R);
qiu=Bes0.*Leg0;
for k=2:2:100
	Leg=legendre(k,cos(Q));
	Legk=squeeze(Leg(1,:,:));
	Bes=sqrtR.*besselj(k,R);
	qiuk=(2*k+1)*i^k*Bes.*Legk;
	qiu=qiu+qiuk;
end
figure
meshc(X,Z,qiu)
xlabel('z')
