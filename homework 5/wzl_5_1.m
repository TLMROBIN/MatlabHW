data = importdata ('lamost.csv');
i=1;k=0;
l = length(data.data);
histdata=[]
while k < l
    k=k+1;
    if (data.data(i,5)<=4.0)|(data.data(i,3)<=4000)|(data.data(i,3)>=8000)
        data.data(i,:)=[];
        i=i-1;
    end
    if (data.data(i,10)>=0)&(data.data(i,10)<=50)
        histdata = [histdata,data.data(i,10)];
    end
    i=i+1;
end 

figure
subplot (1,3,1)
scatter(data.data(:,1),data.data(:,2),1,'.')
xlabel('ra');
ylabel('dec');
title('ra-dec');
legend('every spot represent an observation')
subplot (1,3,2)
scatter(data.data(:,3),data.data(:,5),1,'feh')
xlabel('teff');
ylabel('logg');
title('teff-logg');
legend('nothing to say')
subplot (1,3,3)
hist (histdata,50)
xlabel('rv err');
ylabel('N');
title('rv err hist')
legend('rv err ''s distribution')