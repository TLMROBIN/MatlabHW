clc,clear             %队积分函数进行赋值计算检验
x=linspace(34,80,20);
y=sin(x);
jifenzhi=jifen(x,y,50,70);
disp('所求积分值为')
disp(jifenzhi)