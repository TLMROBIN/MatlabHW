clear,clc
fid = fopen('exp_data.txt','r');
time=cell(1,3);
day=cell(1,3);
date=cell(4,4);
tline = fgets(fid);                                                                                                                                                                                                                         
tline = fgets(fid);
tline = fgets(fid);
for i=1:3;
    tline = fgets(fid);
    time{i}=tline;
    tline = fgets(fid);
    day{i}=tline;
    tline = fgets(fid);
    date{1,i}=tline;
    tline = fgets(fid);
    date{2,i}=tline;
    tline = fgets(fid);
    date{3,i}=tline;
    tline = fgets(fid);
    date{4,i}=tline;
end
fclose(fid); 
time
day
date