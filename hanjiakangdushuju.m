clc;clear;
fid=fopen('exp_data.txt','r');
name=fgetl(fid);
numb=fgetl(fid);
N=str2num(numb(3));
empty=fgetl(fid);
for i=1:N;
    time{i}=fgetl(fid);
    days{i}=fgetl(fid);
    for j=1:4;
        line{i,j}=fgetl(fid);
        dat=regexp(line{i,j},'\s+','split');
        dat
        for x=1:4;
            data(j,x,i)=dat(x);
        end
    end
    
end;
fclose(fid);