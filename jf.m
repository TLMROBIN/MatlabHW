function s=jf(x,y,a,b)
if (size(x)~=size(y) | a<min(x) | b>max(x))
    fprintf('输入有误,重新输入！\n');
    s=[];
    return;
end
x=a:0.001:b;
n=(b-a)/100;
s=0;
xq=a:n:b;
len=length(xq)
for i=1:len-1
    yi=interp1(mx,my,xq(i),'spline');
    yii=interp1(mx,my,xq(i+1),'spline');
    s=s+n.*(yi+yii)./2
end