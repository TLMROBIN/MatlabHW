function S=Jifen(r,a,b);
%S为积分结果，r为关系式，例如r=‘x^2+1’,ab为积分上下限
y=sym(r);
n=2000;
%将积分区间均分为2000份
h=(b-a)/n;
%求每个小梯形的高h
m=a;
%定义自变量积分的初始值
s=0;
%定义积分结果的初始值以便累加计算
for i=1:n-1;
    s1=h/2*(subs(y,'x',m)+subs(y,'x',m+h));
    m=m+h;
    s=s+s1;
end
%循环计算每个小梯形的面积并累加
S=s;
end