clc;clear
data=importdata('lamost.csv');                          %导入数据
newdata=[];
for i =1:length(data.data(:,1));                        %第一步筛选
    if data.data(i,5)>=4.0;
        newdata=[newdata;data.data(i,:)];
    end
end
newestdata=[];
for n = 1:length(newdata(:,1));                         %第二步筛选
    if(newdata(n,3)>4000&newdata(n,3)<8000);
        newestdata=[newestdata;newdata(n,:)];
    end
end
subplot(2,1,2)
plot(newestdata(:,1),newestdata(:,2),'k.','Markersize',1)
title('坐标')
xlabel('RA')
ylabel('DEC')
subplot(2,2,1)
scatter(newestdata(:,3),newestdata(:,5),[2],newestdata(:,7),'field')
title('logg-teff图 ')
xlabel('TEFF')
ylabel('LOGG')
subplot(2,2,2)
hist(newestdata(:,10),50)
title('rv_err')
xlabel('rverr')
ylabel('数量')
legend('数量')
set(gca,'fontsize',9)