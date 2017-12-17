function[s]=txf(x,y,a,b)
%x,y are martixs,a is lower limit of integral,b is upper limit of integral
%x must conclude a,b
%example:x=[1,2,3,4,5];y=[5,6,7,8,9];a=1;b=4;

il=b-a; %Interval length

new_x=[];
new_y=[];
szx=size(x);
for i=1:szx(2) %Take out the data within the integral interval
    if x(i)>=a && x(i)<=b
        new_x=[new_x,x(i)];
        new_y=[new_y,y(i)];
    end
end

sznx=size(new_x); 
if sznx(2)~=101 %Make sure that there are 100 bins in the integral interval
    xq=[a:(il/100):b];
    yq=interp1(new_x,new_y,xq,'spline');
    new_x=xq;
    new_y=yq;
end

szny=size(new_y);%Trapezoid Method
s=0;
h=il/100;
for i=1:szny(2)-1;
    s=s+1/2*h*(new_y(i)+new_y(i+1));
end
display(s)
end
    
    
    
    


