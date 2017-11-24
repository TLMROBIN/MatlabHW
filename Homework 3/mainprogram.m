clear;clc;close all;
%func is the function which users input?character?(do not use 'f' to define a variaty)
 %example?a*x^2+b*x
%v is a martix that contains all variables.(users need to define xyz as symbolic variaties)
 %example: syms x y z;v=[x,y,z]
%value is a martix that contains all variable values and errors
 %(the frist line is value,the second line is error,match error for value)
 %example: value=[1,2,3;0.1,0.2,0.3]
%The following is a example,please input func v value in the right format
syms m1 m2 r
func= (6.67*10^(-11)*m1*m2)/(r^2);
v=[m1,m2,r];
value=[5.9*10^24,2*10^30,1.50*10^11;(0.1)*10^24,(0.2)*10^30,(0.01)*10^11];

%_(:???)_ ?little ugly...?
%-------------------------------------------------------------------------

[u]=wucha(func,v,value);
[val]=func_value(func,v,value);
display(u)
display(val)