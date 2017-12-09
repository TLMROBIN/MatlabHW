clear;clc;close all
data = importdata('lamost.csv');
ra = data.data(:,1);
dec = data.data(:,2);
teff = data.data(:,3);
logg = data.data(:,5);
feh = data.data(:,7);
rverr = data.data(:,10);

slogg=[];
steff=[];
sfeh=[];
for i=1:length(logg)
 if logg(i)>4.0 && teff(i)>4000 && teff(i)<8000
       slogg=[slogg,logg(i)];
       steff=[steff,teff(i)];
       sfeh=[sfeh,feh(i)];
 else
     slogg=slogg;
     steff=steff;
     sfeh=sfeh;
 end
end

figure
subplot(2,2,1)
plot(ra,dec)
title('figure1')
xlabel('ra')
ylabel('dec')
legend('dec')
subplot(2,2,2)
hist(rverr,0:1:50)
set(gca,'XLim',[0,50])
title('figure2')
xlabel('rverr')
ylabel('number')
legend('number')
subplot(2,2,3)
scatter(steff,slogg,[],sfeh)
title('figure3')
xlabel('teff')
ylabel('logg')
legend('logg')
    


