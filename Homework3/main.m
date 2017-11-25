clear;clc;close all;
%1.计算万有引力公式
m1=5.9*10^24;
m2=2*10^30;
R=1.5*10^11;
F=expression(m1,m2,R)

%2.误差传递计算
dm1=0.1*10^24;
dm2=0.2*10^30;
dR=0.01*10^11;
e=error_propagation(m1,m2,R,dm1,dm2,dR)