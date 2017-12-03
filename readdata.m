clear,clc,close all;
fid = fopen('exp_data.txt','r');
dataname = fgetl(fid);%储存表头
parament = fgetl(fid);%储存参数
fgetl(fid);
n = 1;
time_n = 1;
date_n = 1;
data_n = 1;
time = char(zeros(3,8));%储存时间，三行的字符串
date = char(zeros(3,11));%储存日期，三行的字符串
data = zeros(12,4);%储存所有数据，16*4的表格，按原格式排列，按时间顺序从上到下排列
while ~feof(fid)
    if mod(n,3)==1%存时间
        time(time_n,:) = fgetl(fid);
        time_n = time_n +1;
    elseif mod(n,3)==2%存日期
        date(date_n,:) = fgetl(fid);
        date_n = data_n+1;
    elseif mod(n,3)==0%存数据
        data(data_n:data_n+3,1:4) = (fscanf(fid,'%f  %f  %f  %f',[4,4]))';%转秩
        data_n = data_n+4;
        fgetl(fid);%把指针往下移一格
    end
n = n + 1;
end
