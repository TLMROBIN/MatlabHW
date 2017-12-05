clear,clc
fid = fopen('exp_data.txt','r')
time=zeros(1,3);
day=zeros(1,3);
date1=zeros(4,4);
date2=zeros(4,4);
date3=zeros(4,4);
date4=zeros(4,4);
tline = fgets(fid);                                                                                                                                                                                                                         
tline = fgets(fid);
tline = fgets(fid);
for i=1:3;
    tline = fgets(fid);
    time(i)=tlinew
    tline = fgets(fid);
    day(i)=tline;
    tline = fgets(fid);
    date1(:,i)=tline;
    tline = fgets(fid);
    date2(:,i)=tline;
    tline = fgets(fid);
    date3(:,i)=tline;
    tline = fgets(fid);
    date4(:,i)=tline;
end
fclose(fid); 