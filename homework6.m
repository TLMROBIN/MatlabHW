a=input('input the upper limit of the calculus');
b=input('input the lower limit of the calculus');
syms x
f=sym(input('input the integrand'));%输入的函数中自变量必须是x
xspace=(b-a)/1000
X=a:xspace:b;
integral=0.0
for i=1:1000
    integral=integral+(subs(f,x,X(i+1))+subs(f,x,X(i)))/2*xspace;
end
disp(integral)