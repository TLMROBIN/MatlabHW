clear;clc;
read=importdata('exp_data.txt',' ',21);
readdata=read(4:21);
saveall={};
for i=(1:1:3)
    dataneed=readdata(6*i-5:6*i);
    time=dataneed(1);
    day=dataneed(2);
    data=dataneed(3:6);
    dataall={time day data};
    saveall{i}=dataall;
end
clear data dataall dataneed day i read readdata time
save