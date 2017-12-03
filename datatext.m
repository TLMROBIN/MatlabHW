fid=fopen('exp_data.txt');
tline=fgets(fid);
while ischar(tline)
    disp(tline)
    tline=fgets(fid)
end
fclose(fid)