clc;clear;close all;

fid = fopen('exp_data.txt','r');
tline = fgetl(fid);

nwind = 1; %加入一个指针判断是第几行
Nwind = 1; %加入一个指针判断是第几个数据周期(若为0说明没有进入数据周期）
T = 6;
while ischar(tline) && ~feof(fid)
    tline = fgets(fid);
    if nwind >= 3 %有值的行数，大于三的进入数据周期
        key = mod(nwind - 2, T);
        switch key
            case 1
                time(1,:,Nwind) = char(tline);
            case 2
                datE(1,:,Nwind) = char(tline);
            case 3
                datA(1,:,Nwind) = str2num(tline);
            case 4
                datA(2,:,Nwind) = str2num(tline);
            case 5
                datA(3,:,Nwind) = str2num(tline);
            case 0
                datA(4,:,Nwind) = str2num(tline);
        end
        
        if key == 0
            Nwind = Nwind + 1;
        end   
    end
    
    nwind = nwind + 1;
end 
display(time)
display(datE)
display(datA)
fclose(fid);
