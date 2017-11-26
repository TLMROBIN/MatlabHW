%函数求值
%E和e为表达式，N为变量个数，variate为所有变量,value为变量对应的值,Output为结果
function Output=equation(e,N);
E=sym(e);
variate='';
value=zeros(1,N);
for i=1:N;
    variate(i)=sym(input('please input the variate'));%确定各变量
end
for k=1:N;
    value(k)=input('please input the value');%确定各变量的值
end
for j=1:N;
    E=subs(E,variate(j),value(j));%依次对各变量与它的值进行替换
end
Output=E;
end
