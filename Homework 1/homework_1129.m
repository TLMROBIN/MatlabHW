%程序目标：
%1、将文件中的数据读取
%2、将数据存储到一些变量中
%3、在命令行显示数据
%
%郑晨发 201711160114

%读取数据
clear;clc;
fid=fopen('exp_data.txt');
tline=fgetl(fid);tline=fgetl(fid);%跳过第一行
num=str2num(tline(3:end));%获取数据总数
tline=fgetl(fid);%跳过一个空行

%存储数据到变量
times=cell(1,num);
dates=cell(1,num);
datas=cell(1,num);
d_mat=zeros(4);
if num>0
    for n=1:num
        times{n}=fgetl(fid);
        dates{n}=fgetl(fid);
        for counter=1:4%数据共四行，读取每行
            d_mat(counter,:)=str2num(fgetl(fid));
        end
        datas{n}=d_mat;
    end
else
    fprintf('Empty Data');
end

%显示数据到命令行
for n=1:num
    fprintf('Data%.0f\n',n);
    fprintf([times{n},'\n']);
    fprintf([dates{n},'\n']);
    for counter=1:4%数据共四行，读取每行
        data=datas{n};
        fprintf([num2str(data(counter,:)),'\n']);
    end
    fprintf('\n');
end
