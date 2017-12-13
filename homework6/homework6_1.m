function A=homework6_1(inf,sup,x,y)
A=0;
if(inf<x(1)||sup>x(end)||sup<=inf)
    A='N/A';
else
    n=length(x);
    xq=linspace(inf,sup,4*n+1);
    yq=interp1(x,y,xq,'linear');
    for cyc1=1:4*n
        A=A+(yq(cyc1)+yq(cyc1+1))/2*(xq(cyc1+1)-xq(cyc1));
    end
end

        
