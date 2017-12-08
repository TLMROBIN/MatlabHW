importdata('lamost.csv')
M=ans.data;
num=0;
for cyc1=1:43455
    if M(cyc1,5)>4.0&&M(cyc1,3)>4000&&M(cyc1,3)<8000;
       num=num+1;
    end
end
N=zeros(num,10);
num=0;
for cyc1=1:43455
    if M(cyc1,5)>4.0&&M(cyc1,3)>4000&&M(cyc1,3)<8000;
        num=num+1;
        for cyc2=1:10
        N(num,cyc2)=M(cyc1,cyc2);
        end
    end
end
fig=figure;
subplot(2,2,1)
plot(N(:,1),N(:,2),'k.')
xlabel('ra');
ylabel('dec');
legend('(ra,dec)');
title('ra-decÉ¢µãÍ¼');
legend('dec')
subplot(2,2,2)
scatter(N(:,3),N(:,5),[],N(:,7))
xlabel('teff');
ylabel('logg');
legend('(teff,logg)');
title('teff-loggÉ¢µãÍ¼,ÑÕÉ«´ú±ífeh');
legend('logg')
subplot(2,2,3)
hist(N(:,10),0:1:50)
set(gca,'XLim',[0 50]);
xlabel('rverr');
ylabel('num');
title('rverrÖù×´Í¼');
legend('num')




    