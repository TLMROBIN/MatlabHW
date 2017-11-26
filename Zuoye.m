%由于能力有限，两个function只能计算公式中每项都是二次或以上或有两个或以上变量的公式，但计算引力公式是没有问题的，不过需要输入较多数据，主程序后有整个程序的输入过程示例
%由于G公式中的变量，若是输入G而不是常数会导致求偏导时出现bug，所以直接输入常数
%各变量只能是单个字母，若输入多个字母的变量会出现bug
 display('以下是计算函数值的function所需要输入的变量和值')
Output=equation('6.67*10^(-11)*a*b/r^2',3);
 display('以下是计算误差的function所需要输入的变量和值,公式中的a,b,r及其值需要再输入一遍然后再输入误差')
Error=errors('6.67*10^(-11)*a*b/r^2',3);
display(Output)
display(Error)


%以下是输入过程示例：
% Zuoye
%以下是计算函数值的function所需要输入的变量和值
%please input the variate'a'
%please input the variate'b'
%please input the variate'r'
%please input the value5.9*10^24
%please input the value2*10^30
%please input the value1.5*10^11
%以下是计算误差的function所需要输入的变量和值,公式中的a,b,r及其值需要再输入一遍然后再输入误差
%please input the variate'a'
%please input the variate'b'
%please input the variate'r'
%please input the value5.9*10^24
%please input the value2*10^30
%please input the value1.5*10^11
%please input the error'A'
%please input the error'B'
%please input the error'R'
%please input the error value0.1*10^24
%please input the error value0.2*10^30
%please input the error value0.01*10^11

%Output =

 %  3.4980e+22


%Error =

 %  3.5785e+21