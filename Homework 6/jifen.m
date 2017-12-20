function c = jifen(x,y,a,b,h)
c=0;
xq=a:(b-a)/h:b; %平均差值
yq=interp1(x,y,xq);
for i = 1:1:h
c=((b-a)/(2*h))*(yq(i)+yq(i+1))+c; %求和
end
end