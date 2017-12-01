clc;clear;
file=fopen('exp_data.txt','r');
for i=1:3  %remove the first thre lines of data
    ex=fgets(file);
end
data=zeros(4,4,3); 
a=1;%a,b,c,page are the varieties to  control the location of data storage 
b=1;
c=1;
page=1;
while ~feof(file)                                                     
    tline=fgetl(file); 
    if tline(3)==':' %this line is time 
        time(b,:)=char(tline);
        b=b+1;
    elseif tline(3)=='-' %this line is date
        date(c,:)=tline;
        c=c+1;
    else% this line is data
        data(a,1:end,page)=str2num(tline);
        a=a+1;
        if a==5 %control the page of data martix
            page=page+1;
            a=1;
        end
    
    end
end
fclose(file);
display(time)
display(date)
display(data)
 




