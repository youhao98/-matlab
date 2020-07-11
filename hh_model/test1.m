tic
clc;clear all  %通过修改参数对应2中所述内容
dt=0.05;
M=100;
k=300;
hh
subplot(211);
f=iapp(t,k);
plot(t,v);
xlabel('t'); ylabel('V(t)');
title('Membrane potential vs time');

subplot(212);
plot(t,f);
xlabel('t'); ylabel('I(t)');
title('Impact curent vs time');
toc