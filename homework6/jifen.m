function [A]=jifen(x,y,a,b);
xq=a:(b-a)/1000:b;
yq=interp1(x,y,xq,'spline');
%interpolation
plot(xq,yq)
%draw to see what it is like
S=[]
m=size(yq);
for n=1:m(2)-1;
    term=((xq(n+1)-xq(n))/2)*(yq(n)+yq(n+1));
    %the area of every small ladder-shaped square
    S=[S,term];
end
A=sum(S);
%the area of the whole square.