
fid=fopen('exp_data.txt','r');
datarray=zeros(4,4,3);  %the output array of data
tline=fgets(fid);
nol=1;                   %number of line
while ischar(tline)   
    if nol>3
        module=mod(nol-3,6);
        if module==0
            module=6;
        end
        N=(nol-3-module)/6+1;
        switch module
            case 1
                datatime(1,:,N)=char(tline);
            case 2
                datadate(1,:,N)=char(tline);
            otherwise                 
                datarray(module-2,:,N)=str2num(tline);         
        end
    end
    tline=fgets(fid);
    nol=nol+1;
end
disp(datadate)
disp(datatime)
disp(datarray)
fclose(fid)

                
          
      
        
    
