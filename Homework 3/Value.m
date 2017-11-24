function Val = Value(foo,X,N_X)
%input foo and the Mitrix if its variables as X, and the value of each X
%which named N_X(also a Mitrix and need to Corresponding with X.

%要求用户输入函数的 符号表达式（并且是F=f(x)的形式），并且要输入在位数上
%一一对应的 表达变量名称的矩阵X（X的元素都是已经定义好的符号变量），以及
%变量的值的矩阵（N_X）.
Val = subs(foo,X,N_X);
end
%其实这个函数挺无聊的┑(￣Д ￣)┍,输出值是个符号变量,需要的话double一下