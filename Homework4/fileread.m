clear;clc;
fid=fopen('exp_data.txt','r');
head1=fgetl(fid);
head2=fgetl(fid);
n=str2double(head2(3));             %从head2中提取出观测次数n
fgetl(fid);
data=[];
head=[];
for k=1:n
    head3=fscanf(fid,'%s',[1,1]);
    head4=fscanf(fid,'%s',[1,1]);
    head=[head;[head3,' ',head4]];%head是n次观测的时间、日期，把每一次的head3,head4加到head的下一行
    data1=fscanf(fid,'%f',[4,4]); %data1是每个循环，储存4*4数据的中间变量
    data1=data1';                 %因为fscanf是按列存储，为了与exp_data.txt中看到的一致，进行转置
    data=cat(3,data,data1);       %将每一个循环读到的data1加到data的新一页
end
fclose(fid);
clearvars -except n head data    %将中间变量删去，只保留观测次数n,观测时间日期head,数据data
save fileread.mat                %将变量存储，下一次可以用 load fileread.mat 将变量导入到workspace