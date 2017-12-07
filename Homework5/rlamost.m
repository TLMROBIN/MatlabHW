function rlamost()
data=importdata('lamost.csv',',',1);
teff=data.data(:,3);
logg=data.data(:,5);                   %导入teff,logg两列

matlog1=logg>4;                        %记下logg>4的指标
matlog2=(teff>4000 & teff<8000);       %记下4000<teff<8000的指标
matlog=logical(matlog1.*matlog2);      %取两个指标都满足的部分，用乘来做，因为1*1=1,1*0=0,0*0=0

ra=data.data(matlog,1);
dec=data.data(matlog,2);
teff=teff(matlog);
logg=logg(matlog);
feh=data.data(matlog,7);
rverr=data.data(matlog,10);            %从data.data中读取满足上面判断条件的ra,dec,fej,rverr列,teff,logg也重新赋值

fig1=figure(1);
set(gcf,'position',[50 50 800 600])    %设置画布位置,大小

subplot(2,2,1)
scatter(ra,dec,1,[0 0.5 0.5],'filled') %画符合条件的坐标分布图
title('Distribution of Coordinate')
xlabel('RA')
ylabel('DEC')
leg1=legend('target');
set(leg1,'position',[0.4 0.93 0.1 0.03])
set(gca,'xlim',[80,90],'ylim',[20,30],'xtick',80:2:90,'fontsize',9)

subplot(2,2,3)
scatter(teff,logg,2,feh,'filled') %画符合条件的teff-logg图，用feh表示颜色
c=colorbar;
c.Label.String='feh';
title('target''s logg-teff ')
xlabel('Teff')
ylabel('logg')
leg2=legend('target');
set(leg2,'position',[0.35 0.46 0.1 0.03])
set(gca,'xdir','reverse','fontsize',9)

subplot(1,2,2)
hist(rverr(rverr<50),50)      %画rverr<50的分布图
title('Histogram of RVerr')
xlabel('RVerr')
ylabel('number')
legend('number')
set(gca,'fontsize',9)
h=findobj(gca,'Type','patch');
h.FaceColor=[0 0.5 0.5];
h.EdgeColor='w';                   %设置颜色

saveas(fig1,'lamostDataPrcoessedBySxr.jpg') %保存图片
