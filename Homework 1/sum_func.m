%计算给定数据的定积分(基于梯形面积和的算法)
%格式：sum_function=sum_func(x,y,a,b)
%其中：
%x为x数据，为一个行向量
%y为y数据，为一个与x大小相同的行向量
%a、b为积分上下限，不应超过x的最大、最小值
%如果输入错误，返回一个空矩阵
%例子：
%>>x=0:0.1:2*pi;
%>>y=sin(x);
%>>sum_func(x,y,0,pi)
%ans =
%  2.0000
%
%郑晨发 201711160114
function [ sum_f ] = sum_func( rx,ry,a,b )
if (size(rx)~=size(ry) | a<min(rx) | b>max(rx))
    fprintf('输入有误,重新输入！\n');
    sum_f=[];
    return;
end
dn=10000;
x=linspace(a,b,dn+1);
y=interp1(rx,ry,x,'spline');
dx=x(2)-x(1);
sum_f=sum(0.5.*dx.*(y(1:end-1)+y(2:end)));
end
