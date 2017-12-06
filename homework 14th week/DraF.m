function [output1,output2]=DraF(iNput)
%To input a filename(same path) then it outputs
%a matrix of logg> 4.0 and 4000 <teff <8000 goals.
%and hist of 0 to 50 rv\_err. 2 outputs in total
%exp. [a,b]=DraF('lamost.csv');
%Henry, BNU, 201611160111. 20171206
D_la=importdata(iNput,',',1);

The_j=1;data2=[];%data2 is the main part.
for The_i=1:length(D_la.data)
    if (D_la.data(The_i,5)>4) & (D_la.data(The_i,3)>4000) ...
            & (D_la.data(The_i,3)<8000)
        data2=[data2;D_la.data(The_i,:)];
    end
end

For10=find(data2(:,10)<=50);%find sth of the column 10
data3=data2(For10,10);%and name it data3.

subplot(2,1,2)
plot(data2(:,1),data2(:,2),'m.')
title('ra, dec')
xlabel('ra')
ylabel('dec')
legend('stars')

subplot(2,4,[2 3 4])
scatter(data2(:,3),data2(:,5),[],data2(:,7))
title('teff, logg')
xlabel('teff')
ylabel('logg')
legend('stars',-1)

subplot(2,4,1)
hist(data3)
output2=hist(data3);
title('Rv\_err in the 0 to 50 in the columnar distribution')
xlabel('rv\_err')
ylabel('counts')
legend('counts')

output1=data2;
end
