clear,clc
firstread=importdata('exp_data.txt',' ',21); %导入文件
title=[firstread(1) firstread(2)]; %处理前面两行
time=[];date=[];data=[];
for n=1:3
    partdata=firstread(6*n-3:6*n+2);
    time=[time;partdata(1)];
    date=[date;partdata(2)];
    data=[data;partdata(3:6)];
    %分段循环，分别把日期、时间和数据放入相应的矩阵
end
disp(time),disp(date),disp(data)
