clc;clear;
syms x;
chose=input('自己输入函数输1(以var为自变量）使用演示函数输0：');
if chose==1;
    func=input('请输入函数(以var为自变量）','s');
    lowlim=input('输入积分下区间');
    uplim=input('输入积分上区间');
    jingdu=input('输入计算精度(数值越大精度越高）');
else
    func='x^2+sin(x)';
    lowlim=0  %积分下区间
    uplim=1   %积分上区间
    jingdu=10
end
jifenzhi=calculate(func,lowlim,uplim,jingdu);
jifenzhi
%double(jifenzhi)
