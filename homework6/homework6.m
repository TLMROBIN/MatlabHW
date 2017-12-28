function t=txf(f) 
x=stm('x');
a=input('下限:');
b=input('上限:');
f(x)=0;
p=0;
q=(b-a)/1000;
h=(b-a)/1000;
for i=1:1000
    r=subs(f,x,p);
    s=subs(f,x,q);
    t=t+(h/2)*(r+s);
    p=p+h;
    q=q+h;
end
t=double(t)
