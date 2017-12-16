%This is a function to evaluate definite integral
function area=homework6(x,y,a,b)
xq=a:(b-a)/1000:b;
len=length(xq);
area=0;
for n=2:len
    f_low=interp1(x,y,xq(n-1));
    f_high=interp1(x,y,xq(n));
    darea=(f_high+f_low)*((b-a)/1000)/2;
    area=area+darea;
end
disp(area)
    