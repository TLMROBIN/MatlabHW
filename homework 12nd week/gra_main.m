clear
%Matlab 12nd wk homework. About 万有引力及其误差公式速算
%
%Henry, BNU, 20171122
check=input('是否打算计算误差，是 则输入1，否 则输入0\n>>>');
str1='请输入一个六个数的数组，依次是两个物体质量，距离';
str2='。单位国际标准。\n例如日地引力';
if check==1
    fprintf([ str1 '，两个物体质量各自误差，距离误差' str2 ...
        '信息\n“[5.9e24,2e30,1.5e11,.1e24,.2e30,.01e11]”\n'])
    The_data=input('>>>');
    F_dev=gra_dev_f(The_data(1),The_data(2),The_data(3),The_data(4), ...
        The_data(5),The_data(6))
    F=gra_f(The_data(1),The_data(2),The_data(3))
else
        fprintf([str1 str2 ...
        '信息\n“[5.9e24,2e30,1.5e11]”\n'])
    The_data=input('>>>');
    F=gra_f(The_data(1),The_data(2),The_data(3))
end
clear check str1 str2