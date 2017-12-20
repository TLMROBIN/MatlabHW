function t=homework6jf(x,y,a,b)%x没啥大用，a、b都要在x的取值范围中
len = (b-a)/1000;%步长
t=0;
xq=a:len:b;
yq=interp1(x,y,xq);%插值
for n=1:1000
   s=0.5*(yq(n)+yq(n+1))*len;%梯形法计算积分
   t=t+s;
end
disp(t)
end
