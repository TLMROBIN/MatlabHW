% Homework-6 201711160104 石睿杰
% 用梯形近似代替的方法求定积分的函数
% 输入自变量矩阵x，表达式y，积分限a和b

function S = integration(x,y,a,b)
delta = min(diff(x))/100;
xq = a:delta:b;
yq = interp1(x,y,xq,'spline');
s = 0;
for i = 1:(length(xq)-1)
    deltas = 0.5*delta*(yq(i)+yq(i+1));
    s = s+deltas;
end
display(S)
