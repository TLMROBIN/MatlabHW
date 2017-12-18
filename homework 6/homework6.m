%homework6
function homework6(f,a,b)
x = linspace(a,b,100);
var = symvar(f);
y = subs(f,var,x);
s = 0;
for i = 1:99
    s = s + (y(i)+y(i+1))*(b-a)/198;
end
fprintf('%g \n',s)
