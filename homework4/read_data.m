clc
clear
fid=fopen('exp_data.txt');
time=repmat('N/A',100,3);
date=repmat('N/A',100,4);
dataMass=zeros(100,4,4);
cyc1=0;
while ~feof(fid)
    cline=fgets(fid);
    if length(cline)==9
        cyc1=cyc1+1;
        time(cyc1,:)=cline;
    elseif length(cline)==12
        date(cyc1,:)=cline;
        for cyc2=1:4
            for cyc3=1:4
                dataMass(cyc1,cyc2,cyc3)=fscanf(fid,'%f',1);
            end
        end
    end
end