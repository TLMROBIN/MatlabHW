function S=myintegral(x,y,a,b)
%To input x as matrix of argument and y as matrix of dependent variable and
%a as points lower limit and b as points limit, then it outputs integral.
%Example
%x = 0:pi/16:pi;y = sin(x);myintegral(x,y,0,pi) →ans=2
%Warning: must exist a<=x<=b.
%Henry, BNU, 201611160111, 20171213
y=y(x>=a & x<=b);x=x(x>=a & x<=b);
xp=linspace(a,b,length(x)*100);%The 100 bases on my experience.
yp=interp1(x,y,xp,'spline');%The spline bases on my experience.
S=sum((yp(1:end-1)+yp(2:end)).*(xp(2)-xp(1))./2);
end
