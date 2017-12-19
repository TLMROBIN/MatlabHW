%%输入x,y,下线a，上限b，分块数n，得出y0为积分结果。
function y0=integral(x,y,a,b,n)
h=(b-a)/n;
x1=a:h:b-h;
x2=a+h:h:b;
f1=interp1(x,y,x1);
f2=interp1(x,y,x2);
y1=abs(x1-x2).*(f1+f2)./2;
y0=sum(y1);
