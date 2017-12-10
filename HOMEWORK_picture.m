clear;clc;close all
lamost=importdata('lamost.csv')
teff=lamost.data(:,3);
logg=lamost.data(:,5);
rv_err=lamost.data(:,10);
ra=lamost.data(:,1);
dec=lamost.data(:,2);
feh=lamost.data(:,7);
Logg=[];
Teff=[];
Feh=[];
for i=1:length(logg)
 if logg(i)>4.0 && teff(i)>4000 && teff(i)<8000
       Logg=[Logg,logg(i)];
       Teff=[Teff,teff(i)];
       Feh=[Feh,feh(i)];
 else
     Logg=Logg;
     Teff=Teff;
     Feh=Feh;
 end
end
figure
subplot(1,3,1)
scatter(ra,dec,0.1,'.')
title('ra£¬dec µÄ plot É¢µãÍ¼')
xlabel('ra')
ylabel('dec')
legend('ra','dec')

subplot(1,3,2)
scatter(Teff,Logg,0.1,Feh)
title('ra£¬dec µÄ plot É¢µãÍ¼')
xlabel('teff')
ylabel('logg')
legend('teff','logg')

subplot(1,3,3)
hist(rv_err,0:0.5:50)
set(gca,'XLim',[0,50])
xlabel('rv_err')
ylabel('number')
title('rv_errÖù×´Í¼')
legend('rv_err')