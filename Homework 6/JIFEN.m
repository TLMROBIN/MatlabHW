function output = JIFEN(x,y,a,b)
%output = integral y=f(x) from a to b
bin_width = 0.001;
a = 1.0* a; b = 1.0*b;
delta_x = min(diff(x));
% If the value of each point in the counting of integral 
% is not enough (deltax>bin_width), the value is added to the integral by the 
% interpolation method. 
if delta_x > bin_width
    xq = a:bin_width:b;
    yq = interp1(x,y,xq,'spline');
else
    data = [x;y]';
    data_flt = data( data(:,1) >= a & data(:,1) <= b, :);
    xq = data_flt(:,1);
    yq = data_flt(:,2);
    bin_width = min(diff(xq));
end

%lets integral yq v. xq
bins = (b-a)/bin_width;
% delta_bin_height = diff(yq)./diff(xq); %there we can use diff 
% or we can just use the yq(i+1)
final = 0;
for i=1:(bins-1)
    bin_squre = bin_width /2 * ( yq(i) + yq(i+1) );
    final = final + bin_squre;
end
% plot(xq,yq);
output = final;
end