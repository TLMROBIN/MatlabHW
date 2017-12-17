%计算积分的主程序
%郑晨发 201711160114
clear;clc;
x=0:0.1:2*pi;
y=sin(x);
sum=sum_func(x,y,pi/2,pi);
disp('sum = ');
disp(sum);
