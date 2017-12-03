clear;close;clc;
fid = fopen('exp_data.txt');
 tline = fgets(fid);
 line = 1;                                             %The number of the lines
 data=zeros(4,4,3);                                    %The data array that will be output
 while ischar(tline);
     if line>3;                                        %Remove the first three lines
         Mod=mod(line-3,6);                            %Correct the Mod of the last line of every arrays
         if Mod==0
             Mod=6;
         end
         array_number=(line-3-Mod)/6+1;                %Get the number of array
         if Mod==1;
             time_data(1,:,array_number)=char(tline);  %This is the time data
         elseif Mod==2;
             date_data(1,:,array_number)=char(tline);  %This is the date data
         else
             data(Mod-2,:,array_number)=str2num(tline);%This is the observation data
         end
     end
     tline=fgets(fid);                                 %Read the data for lines
     line=line+1;
 end
 display(time_data);
 display(date_data);
 display(data);                                        %Output the data