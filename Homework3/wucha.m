function[u]=wucha(func,v,value)
%u is used to represent errors 
%func is the function which users input (do not use 'f' to define a variaty)
 %example?a*x^2+b*x
%v is a martix that contains all variables.(users need to define xyz as symbolic variaties)
 %example: syms x y z;v=[x,y,z]
%value is a martix that contains all variable values and errors
 %(the frist line is value,the second line is error,match error for value)
 %example: value=[1,2,3;0.1,0.2,0.3]

f= func;
sz=size(value);
middle_value=zeros(sz);%size(2) is the amount of avariaties
for i=1:(sz(2))
    middle=diff(f,v(i));
    middle_value(1,i)=subs(middle,v,value(1,1:end));
    middle_value(2,i)=(middle_value(1,i)*value(2,i))^2;
end
u=(sum(middle_value(2,1:end)))^(1/2);
end







