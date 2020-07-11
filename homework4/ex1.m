%l值不同时的各种球面波图像
clear all;clc
[X,Z]=meshgrid(0.05:0.1:10);
[Q,R]=cart2pol(X,Z);
sqrtR=sqrt(pi/2./R);
for k=0:1:5
	Leg=legendre(k,cos(Q));
	Legk=squeeze(Leg(1,:,:));
	Bes=sqrtR.*besselj(k,R);
	qiuk=Bes.*Legk;
	figure
	surfc(X,Z,qiuk)
	xlabel('x')
end
