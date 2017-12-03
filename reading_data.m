fid=fopen('exp_data.txt','r');
tline=fgets(fid);
a=1;
b=1;
while ~feof(fid)
    tline=fgets(fid);
    if length(tline)>16 %长度大于16的为需要提取的数据
        data(a,:)=str2num(tline);
    else
     end
    a=a+1;
end
fclose(fid);
a=size(data);
num=5:6:a(1); %将数据按组分割
data_1=data(num(1):num(1)+3,:)
data_2=data(num(2):num(2)+3,:)
data_3=data(num(3):num(3)+3,:)








