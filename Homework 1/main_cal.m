%主程序 11.22作业
%郑晨发 201711160114

clear;clc;
f=sym('A*x^2+B*x+C');%原始函数
diff_f=diff_function(f,['A','B','C','x'],[0.1,0.2,0.3,0.4]);%计算误差传递方程
value_f=cal_function(f,{'A','B','C','x'},{1,4,-2,3});%计算原始方程值
display([diff_f value_f]);%显示结果
