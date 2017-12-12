clear;close;clc
newdata=zeros(1,10);
%import data
lamost = importdata('lamost.csv',',',1);
%choose data
for i=1:43455;                          
    if lamost.data(i,5)>4.0;
        if 4000<lamost.data(i,3)<8000;
            newdata=[newdata;lamost.data(i,:)];
        end
    end
end
newdata(1,:)=[];
ra=newdata(:,1);
dec=newdata(:,2);
teff=newdata(:,3);
logg=newdata(:,5);
feh=newdata(:,7);
rverr=newdata(:,10);
%make picture
figure; 
%ra_decɢ��ͼ
subplot(2,2,1);
plot(ra,dec,'b.');
title('ra-decɢ��ͼ');
xlabel('ra');
ylabel('dec');
%teff-loggɢ��ͼ
subplot(2,2,2);
scatter(teff,logg,[1],feh);
title('teff-loggɢ��ͼ');
xlabel('teff');
ylabel('logg');
%rverr��״ͼ
subplot(2,2,3)
hist(rverr(rverr>0 & rverr<50),50);
title('rverr��״ͼ');
xlabel('rverr');
ylabel('number');