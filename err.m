function errors = err(func,argument,org_errs)
%errors = err(func,argument,org_errs),返回一个运用误差传递公式计算得出的误差值。
%输入变量说明：
%func 字符型变量 函数表达式，等式右边部分
%argument 字符型矩阵 自身带误差的变量名
%org_errs 数值型矩阵 变量误差值，注意与argument一一对应
%例： err('a+2*b',['a','b'],[1,1])
%ans =
%
%   2.2361e+00
num = size(argument);%得到带误差变量数量
FUNC = sym(func);
errors2 = 0;
for n = 1:num(2);
    errors2 = errors2+(diff(FUNC,argument(n))*org_errs(n))^2;%误差传递公式
end
errors = double(errors2)^0.5;
