fid = fopen('exp_data.txt','r');
time = ''
date = ''
data = ''
title = ''
p = 0
while ~feof(fid) 
    p = p+1;
    k = (p-3)%7 ;
    line = fgets(fid);
    if k<0 
        title = [title,line];
    end
    if k==1 
        time = [time,line];
    end
    if k==2 
        date = [date,line];
    end
    if k>2 
        data = [data,line];
    end
    if k==6
        p=p-6;
    end
end
display(title)
display(time)
display(date)
display(data)
fclose(fid);