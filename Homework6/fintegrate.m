function S=fintegrate(x,y,a,b)
%梯形法积分
%输入：一一对应xy矩阵,起点,终点
%输出：积分结果

buchang=min(diff(x))/50;                %在原有间隔里插(50-1)个值
xq=a:buchang:b;
yq=interp1(x,y,xq,'spline');

S=0;
for k=1:(length(xq)-1)
    deltaS=0.5*buchang*(yq(k)+yq(k+1)); %deltaS每一块梯形面积
    S=S+deltaS;
end
% S=0.5*buchang*(2*sum(yq)-yq(1)-yq(end));也可以直接用这样一行计算面积S
disp(S)