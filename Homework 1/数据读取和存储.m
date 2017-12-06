clear;clc
fid=fopen('exp_data.txt','r');%读取文件
tline=fgetl(fid);tline=fgetl(fid);
N=str2num(tline(3));%获取N的值
tline=fgetl(fid);
the_time_first=[];
the_date_first=[];
data_4=zeros(4);
data_n=[];
for round1=1:3%获取时间
    the_time=fgetl(fid);
    the_time_first=[the_time_first;the_time];
    the_date=fgetl(fid);
    the_date_first=[the_date_first;the_date];
    for round2=1:4%获取四行数据
        data_4(round2,:)=str2num(fgetl(fid));
    end
    data_n=[data_n;data_4];
end
save readdata.mat%存储变量


        

