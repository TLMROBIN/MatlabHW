%底层I/O读取并修改数据文件
clear

%打开并读取数据
fid = fopen('exp_data.txt');

%剔除表头
for j=1:3
   dismiss = fgets(fid);
end

%将time、date按行读入矩阵
%将三组data放入三维数组中
time = [];
date = [];
for n=1:3
    time = [time,fgets(fid)];
    date = [date,fgets(fid)];
    data(:,:,n) = fscanf(fid,'%f\n',[4,4]);
end

%输出time、date与data
%注意数组赋值时按列读入，故要原样输出必须转置
time
date
data = permute(data,[2 1 3])

fclose(fid);

  




    
