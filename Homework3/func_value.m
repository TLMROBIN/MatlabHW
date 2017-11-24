function[val]=func_value(func,v,value)
%u is used to represent errors 
%func is the function which users input?character?(do not use 'f' to define a variaty)
 %example?a*x^2+b*x
%v is a martix that contains all variables.(users need to define xyz as symbolic variaties)
 %example: syms x y z;v=[x,y,z]
%value is a martix that contains all variable values and errors
 %(the frist line is value,the second line is error,match error for value)
 %example: value=[1,2,3;0.1,0.2,0.3]
 
 f= func;
 val=subs(f,v,value(1,1:end));
 val=double(val);
 

end