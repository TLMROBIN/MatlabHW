fid=fopen('exp_data.txt','r');  %打开文件读取
title=fgetl(fid)
number=fgetl(fid)
fgetl(fid);

time1=fgetl(fid);                %存第一组数组
date1=fgetl(fid);
datas1=(fscanf(fid,'%f',[4,4]))';
fgetl(fid);       
time2=fgetl(fid);                 %存第二组数据
date2=fgetl(fid);
datas2=(fscanf(fid,'%f',[4,4]))';
fgetl(fid);
time3=fgetl(fid);                 %存第三组数据
date3=fgetl(fid);
datas3=(fscanf(fid,'%f',[4,4]))';

time=char(time1,time2,time3)  %输出数据并将三组数据分类整合
date=char(date1,date2,date3)
datas=[datas1;datas2;datas3]

save('observedata.mat','title','number','time','date','datas')  %保存