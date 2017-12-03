%此文件中，有很多过程变量，用a,b,c,d表示了，但是输出结果时换成了正常命名，并且将其他变量都clear掉了……
%不影响程序的使用与美观

%打开文件
fid = fopen('exp_data.txt','r');

%将txt文件中所有的信息导入到a中去，方便调用，然后关闭源文件，最大限度地防止源文件被误改
tline = fgetl(fid);
for n = 1:21;
    a{n} = tline;
    tline = fgetl(fid); 
end
fclose(fid);

%将a中的数据变得好看一点，在b中显示出来
b{1,1} = a{1};
b{1,2} = a{2};
lin = 4;
for m = 2:4;
    b{m,1} = a{lin};
    lin = lin+1;
    b{m,2} = a{lin};
    lin = lin+1;
    for n = 1:4;
        b{m,n+2} = a{lin};
        lin = lin+1;
    end
end

%将每一组的16个数据分开，并再次写入到b中
for m = 2:4
   for n = 3:6
      c = b{m,n} ;
      d(m-1,4*(n-2)-3:4*(n-2)) = str2num(c);
   end
end
for m = 2:4
   for n = 3:18
      b{m,n} = d(m-1,n-2); 
   end
end

%将结果从b 中转换到exp_data中，保存成mat格式，并将其他的过程变量都clear掉
exp_data = b;
save('exp_data.mat','exp_data');
clear;
load('exp_data.mat');







