nction errors = err(func,argument,org_errs,org_val)
%errors = err(func,argument,org_errs),返回一个运用误差传递公式计算得出的误差值。
%输入变量说明：
%func 字符型变量 函数表达式，等式右边部分
%argument 字符型矩阵 自身带误差的变量名
%org_errs 数值型矩阵 变量误差值，注意与argument一一对应，如没有误差，输入0
%org_val 数值型矩阵 变量值，注意与argument一一对应
%你不按照我的格式输入是不行的！
%例： err('a+2*b',['a','b'],[1,1],[1,1])
%ans =
%
%   2.2361e+00
num = size(argument);%得到带误差变量数量
FUNC = sym(func);
errors2 = 0;
for n =1:num(2);%把所有变量变成符号
    sym(argument(n))
end
for n = 1:num(2);%对每一个变量求偏导，带值计算并乘以误差值
    sub_func = sym(diff(FUNC,sym(argument(n))));%偏导
    errors2 = errors2+(subs(sub_func,{argument(:)},{org_val(:)})*org_errs(n))^2;
end
errors = double(errors2)^0.5;
