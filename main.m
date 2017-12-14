clear;clc;close all

a=0;
b=pi;
x=a:(b-a)/10:b;
y=sin(x);

S=fintegrate(x,y,a,b);
%输入参数：一一对应xy矩阵,起点,终点； 输出：积分结果