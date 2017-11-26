%函数求导
%E和e为表达式，N为变量个数，variate为所有变量,Diff为导数
function Error=errors(e,N);
E=sym(e);
variate='';
value=zeros(1,N);
error='';
error_value=zeros(1,N);
for i=1:N;
    variate(i)=sym(input('please input the variate'));%确定各变量
end
for m=1:N;
    value(m)=input('please input the value');%确定各变量的值
end
for l=1:N;
    error(l)=sym(input('please input the error'));
end
for n=1:N;
    error_value(n)=input('please input the error value');%确定各变量误差的值
end
Error=sym(0);
Diff=E;
for k=1:N;
    Diff=diff(E,variate(k),1);
    Diff=(Diff*error(k))^2;
    Error=Error+Diff;
end
for j=1:N;
    Error=subs(Error,variate(j),value(j));%依次对各变量与它的值进行替换
end
for p=1:N;
    Error=subs(Error,error(p),error_value(p));%依次对各变量误差与它的值进行替换
end
Error=Error^0.5;
end