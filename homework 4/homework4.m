%Homework4  to read the file
fid = fopen('exp_data.txt','r');
tline = fgets(fid);
Name = tline;
tline = fgets(fid);
N = tline;
tline = fgets(fid);
Time = '';
Date = '';
Data = zeros(4,4,3);
for i = 1:3
    tline = fgets(fid);
    Time(:,i) = tline;
    tline = fgets(fid);
    Date(:,i) = tline;
    Data(:,:,i) = fscanf(fid,"%f",[4 4]);
    Data(:,:,i) = (Data(:,:,i))';
    tline = fgets(fid);
end
Date = Date';
Time = Time';
display(Name)
display(N)
display(Time)
display(Date)
display(Data)