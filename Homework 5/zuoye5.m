data=importdata('lamost.csv');
data0=[];
for i=1:1:43455
    if data.data(i,3)>4000&&data.data(i,3)<8000&&data.data(i,5)>4
        data0=[data0;data.data(i,:)];
    end
end
feh=data0(:,7);
subplot(1,3,1)
scatter(data0(:,1),data0(:,2),3,'r')
title('ra，dec 的 plot 散点图')
xlabel('ra')
ylabel('dec')
subplot(1,3,2)
title('teff, logg 的散点图')
xlabel('teff')
ylabel('logg')
scatter(data0(:,3),data0(:,5),3,feh)
subplot(1,3,3)
rverr=[];
for i=1:1:22133
    if data0(i,10)>0&&data0(i,10)<50
        rverr=[rverr;data0(i,10)];
    end
end
hist(rverr,0:1:50);
