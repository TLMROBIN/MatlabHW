clear
%The teacher gave me a text to let me read all info.
fid=fopen('exp_data.txt','r');
cache=fgets(fid);
cache=fgets(fid);
N=str2num(cache(3:end));
cache=fgets(fid);

for The_i=1:3
    data.time=fgets(fid);
    data.date=fgets(fid);
    for The_i2=1:4
        data.The_matrix(The_i2,:)=str2num(fgets(fid));
    end
    All_matrix(:,:,The_i)=data.The_matrix;
    eval(['data',num2str(The_i),'=data;']);
end
fclose(fid);
clear  The_i ans data fid The_i2 cache
