function z=jifen(x,y,a,b)
sizex=size(x);
sizey=size(y);
xx=b-a;
xq=a:xx/100000:b;
z=0;
if sizex(1,2)~=sizey(1,2)
    fprintf('x与y数据对应出现问题，请重新输入')
elseif a<min(x)||b>max(x)
    fprintf('积分上下限超出x数据范围')
else
    yq=interp1(x,y,xq);
    sizeyq=size(yq);
    for n=(1:sizeyq(1,2)-1)
        z=z+((yq(n)+yq(n+1)).*(xx/100000)/2);
    end
end
end