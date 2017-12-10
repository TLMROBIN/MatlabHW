clear;clc;close all;
data=importdata('lamost.csv',',',1);
data=data.data;
n=size(data);
target=[];
%a new matrix to save the target we need
for m=1:n(1);
    if (data(m,5)>4.0) && (data(m,3)>4000) && (data(m,3)<8000);
        target=[target;data(m,:)];
    end
end
%choose the exact target

ra=target(:,1);
dec=target(:,2);
teff=target(:,3);
logg=target(:,5);
feh=target(:,7);
rv_err=target(:,10);
%save the parameter in to different matrix

figure
subplot(3,1,1);
pic1=scatter(ra,dec,0.4,'g');
xlabel('ra');
ylabel('dec');
title('Coordinate distrbution');
legend('ra-dec')
%draw a scatter of coordinate distrbution

subplot(3,1,2);
pic2=scatter(teff,logg,0.4,feh);
xlabel('teff');
ylabel('logg');
title('H-R');
legend('teff-logg')
%draw H-R 

subplot(3,1,3);
hist(rv_err,0:1:50,'color',[0.5 0.2 0.7]);
set(gca,'XLim',[0,50]);
set(get(gca,'child'),'FaceColor',[0 0.8 0.2],'EdgeColor','w')
xlabel('rv_err');
ylabel('count');
title('rv_err distribution');
legend('count')
%draw a hist of rv_err