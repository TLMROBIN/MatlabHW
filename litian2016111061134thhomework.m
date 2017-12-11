clear;clc
fid=fopen('exp_data.txt');
tline=fgets(fid);
num=fgets(fid);
tline=fgets(fid);
for i=1:str2num(num(3));
    time(i,:)=fgets(fid);
    date(i,:)=fgets(fid);
    for n=1:4;
        shuzi=(i-1)*4+n;
        fgetsfid=fgets(fid);
        sizehang=size(fgetsfid);
        for h=1:sizehang(2);
            data(shuzi,h)=fgetsfid(h);
        end
    end
end
%输入data time data看数据 时间 日期