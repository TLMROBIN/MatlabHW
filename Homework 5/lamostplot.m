% Homework-5 201711160104 石睿杰

clear;clc;
file=importdata('lamost.csv',',',1);
data=file.data;
dataneeded=[];
teff=data(:,3);
logg=data(:,5);
datasize=size(data);
newdata=[];
for i=1:datasize(1)
    if logg(i,1)>4.0 && teff(i,1)<8000 && teff(i,1)>4000
        newdata=[newdata;data(i,:)];
    end
end

ra=newdata(:,1);
dec=newdata(:,2);
teff=newdata(:,3);
logg=newdata(:,5);
feh=newdata(:,7);
rverr=newdata(:,10);

fig=figure;
subplot(131);
plot(ra,dec,'r.','MarkerSize',3);
title('RA-DEC');xlabel('RA');ylabel('DEC');legend('Position');
grid on;

subplot(132);
scatter(teff,logg,10,feh,'.');
title('Hertzsprung-Russel Diagram');
xlabel('Teff');ylabel('Logg');legend('Position');
grid on;

subplot(133);
hist(rverr,0:1:50);
xlim([0,50]);
title('Rverr');xlabel('bins');ylabel('number');legend('number');
grid on;

saveas(fig,'fig.jpg')
