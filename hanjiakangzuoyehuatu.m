data=importdata('lamost.csv');
dataloc=[];
dataloca=[];
for i=1:length(data.data(:,1));
    if data.data(i,5)>4;
        if data.data(i,3)<8000 && data.data(i,3)>4000;
            dataloc(end+1,1)=i;
        end
    end
end
data0=zeros(length(dataloc),10);
for j=1:length(dataloc);
    data0(j,:)=data.data(dataloc(j,1),:);
end
for x=1:length(data0(:,1));
    if data0(x,10)<=50
        dataloca(end+1,1)=x;
    end
end
data1=zeros(length(dataloca),1);
for y=1:length(dataloca)
    data1(y,1)=data0(dataloca(y,1),10);
end
figure;
subplot(1,3,1)
plot(data0(:,1),data0(:,2),'r.','markersize',1);
title('ra-dec figure')
xlabel('ra')
ylabel('dec')
subplot(1,3,2);
scatter(data0(:,3),data0(:,5),3,data0(:,7));
title('teff-logg-feh as color figure');
xlabel('teff');
ylabel('logg');
subplot(1,3,3);
hist(data1(:,1));




