function [s] = func1(x, y, a, b)

x1 = a:(b-a)/10000:b;
y1 = interp1 (x,y,x1);
s = 0;
for i = 1:10000
    s = s + (y1(i)+y1(i+1))/2*(x1(i+1)-x1(i));
end

end

