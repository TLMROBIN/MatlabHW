n=input('m(恒星)/m(太阳)=');
if n<=0.43
    l=0.23*n^2.3;
elseif n<=2
    l=n^4;
elseif n<=20
    l=1.5*n^3.5;
else
    l=3200*n;
end
disp('光度为：');disp(l);
