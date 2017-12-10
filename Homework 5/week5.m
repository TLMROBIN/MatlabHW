% 读取 lamost.csv 数据
% 挑选出 logg>4.0 以及 4000<teff<8000 的目标
% 用这些目标画一张图，包括以下子图
% ra，dec 的 plot 散点图
% teff, logg 的散点图，用颜色表示 feh
% rverr 在0到50之间的柱状分布图
% 
% 要求所有图有x、y轴说明、标题、图例


clear;clc;close all
%read lamost.csv
lamost = importdata('lamost.csv',',',1);
%find target
lamost_flt = lamost.data(lamost.data(:,5) > 4.0 &... 
    8000 > lamost.data(:,3) & lamost.data(:,3) > 4000,:);
RA = lamost_flt(:,1) ;DEC = lamost_flt(:,2);
teff = lamost_flt(:,3);logg = lamost_flt(:,5); feh = lamost_flt(:,7);
rverr = lamost_flt(:,10);
%make pictures
% ra，dec 的 plot 散点图
% teff, logg 的散点图，用颜色表示 feh
% rverr 在0到50之间的柱状分布图
figure
hold on 
subplot(3,1,1)
plot(RA,DEC,'k.');
title('RA-DEC');
xlabel('RA');ylabel('DEC');
legend('POSITIONS');
subplot(3,1,2)
scatter(teff,logg,1.5,feh)
title('H-R');
xlabel('teff');ylabel('logg');
legend('scatters-.-');
subplot(3,1,3)
hist(rverr(rverr>0 & rverr<50),50);
title('histttttttt');
xlabel('rverr');ylabel('numbers');
legend('rverr_b_i_n');
hold off



