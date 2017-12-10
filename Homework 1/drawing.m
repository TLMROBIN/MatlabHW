clc,close all,clear
data=importdata('lamost.csv',',',1);   %导入数据
select1=[];
n=size(data.data,1);

for p = 1:n   %选择合适数据
    if data.data(p,5)>4.0 & data.data(p,3)>4000 & data.data(p,3)<8000
        select1=[select1;data.data(p,:)];
    end
end

ra=select1(:,1);    %将合适数据带入变量
dec=select1(:,2);
teff=select1(:,3);
logg=select1(:,5);
feh=select1(:,7);
rv_err=select1(:,10);

subplot(3,1,1)  %第一幅子图，ra—dec关系
scatter(ra,dec,0.1,'filled')
xlabel('ra')
ylabel('dec')
legend('position')
title('position of celestial bodies')

subplot(3,1,2)   %第二幅子图，teff-logg、feh关系
scatter(teff,logg,0.1,feh)
xlabel('teff')
ylabel('logg')
legend('teff-logg(feh)')
title('teff-logg(feh)')

subplot(3,1,3)    %第三幅子图，rv_err柱状图
hist(rv_err,0:0.5:50)
set(gca,'xlim',[0,50])
xlabel('rv_err')
ylabel('number')
legend('rv_err distributions')
title('rv_err of celestial bodies')

