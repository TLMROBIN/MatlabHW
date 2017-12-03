clear;clc;
fid=fopen('exp_data.txt','r');
%open the file
title=[];
for n=1:3;
    title=[title,fgets(fid)];
    %dismiss the first 3 lines
end
time=[];
date=[];
for n=1:3;
    time=[time;fgets(fid)];
    %save the times in a matrix
    date=[date;fgets(fid)];
    %save the dates in a matrix
    data(:,:,n)=[fscanf(fid,'%f',[4,4])'];
    %save the data in a matrix(dimension 3 for 3days)
    fgets(fid);
    %I found that there is a line which can not be seen.I don't know why???
end
fclose(fid);
%close the file
disp(time)
disp(date)
disp(data)
%show!