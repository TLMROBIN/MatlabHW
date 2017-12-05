fid=fopen('exp_data.txt','r');
data=cell([1,4]);
data(1,1)={fgets(fid)}; %save title 
fgets(fid);
fgets(fid);
for i=2:1:4
    data(1,i)={cell([1,3])}; 
    data{1,i}(1,1)={fgets(fid)}; % save time
    data{1,i}(1,2)={fgets(fid)}; % save date 
    data{1,i}(1,3)={fscanf(fid,'%f',[3,4])}; % save data
end
