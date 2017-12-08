clear

data = importdata('lamost.csv');
ra = data.data(:,1);
dec = data.data(:,2);
teff = data.data(:,3);
logg = data.data(:,5);
feh = data.data(:,7);
rverr = data.data(:,10);

m=0;
for n=1:43455
   Logg = logg(n);
   Teff = teff(n);
   if Logg>4&&Teff>4000&&Teff<8000
       m=m+1;
       aim(m,:)=n;
   end
end
clear('Logg','Teff','m','n')

N=size(aim);
for n=1:N(1)
    Ra(n)=ra(aim(n));
    Dec(n)=dec(aim(n));
    Teff(n)=teff(aim(n));
    Logg(n)=logg(aim(n));
    Feh(n)=feh(aim(n));
    Rverr(n)=rverr(aim(n));
end


subplot(2,2,1)
plot(Ra,Dec,'c.','MarkerSize',2)
title('ra&dec的散点图')
xlabel('ra')
ylabel('dec')

subplot(2,2,2)
scatter(Teff,Logg,2,Feh)
title('teff&logg的散点图')
xlabel('teff')
ylabel('logg')

subplot(2,2,3)
hist(Rverr,0:1:50)
%改变颜色，让柱状图更好看一点
h= findobj(gca,'Type','patch');
set(h,'FaceColor','c','EdgeColor','b')
%改变横坐标的取值范围
set(gca,'xlim',[0,50])
title('rverr 在0到50之间的柱状分布图')
xlabel('rverr')
ylabel('个数')

