function intgra = intergral(x,y,a,b)
%输入变量：x值、y值、积分下限，积分上限
xq = a:10^(-7):b;%插分
f = interp1(x,y,xq,'spline');%每个插分点的取值
intgra=sum(10^(-7)*f)-f(1)*10^(-7);%近似成矩形计算，因为插值比矩形多一个，所以减去第一个值
end