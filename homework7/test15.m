% test15.m
clc;clear all

N=1000;
tmax=10000;
n=zeros(tmax,2);
n(1,1)=N;
n(1,2)=0;

for i=1:tmax-1
	pl=n(i,1)./N;
	pr=1-pl;
	el=rand;
    er=rand;
    n(i+1,:)=n(i,:);
	if el<=pl && er>=pr
		n(i+1,1)=n(i,1)-1;
		n(i+1,2)=n(i,2)+1;
    end
	if er<=pr && el>=pl
		n(i+1,1)=n(i,1)+1;
		n(i+1,2)=n(i,2)-1;
	end
end
t=0:1:tmax-1;
plot(t,n(:,1),'r',t,n(:,2),'b')