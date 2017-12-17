function S=jifen(x,y,a,b)
%输入x矩阵及一定函数关系下对应的y矩阵，给出积分上下限a，b，进行该区间内符合x，y函数关系的积分运算
x2=linspace(a,b,1001);
y2=interp1(x,y,x2,'spline');
d=(b-a)/1000;
S=0;
%插值，划分区域进行计算准备

for n=1:1000;
    s=(y2(n)+y2(n+1))*d/2;
    S=S+s;
end
%循环求微分面积相加计算积分

end
