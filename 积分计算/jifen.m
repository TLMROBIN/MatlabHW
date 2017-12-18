%该子程序利用插值法与梯形法实现积分求解
function [value] = jifen(a,b,x,fun)

%xq为插入自变量
%yq为对应函数值
%value为梯形面积之和，等价于积分值
xq = a:(b-a)/1000:b;
yq = interp1(x,fun,xq,'spline');
value = 0;

%循环求梯形面积
size_xq = size(xq);
for j=1:size_xq(2)-1
value = value+(yq(j)+yq(j+1))/2*(xq(j+1)-xq(j));
end

end
