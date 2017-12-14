function [sum] = integral(inputarray_x,inputarray_y,lower_bound,upper_bound)
a=size(inputarray_x);b=size(inputarray_y);
if lower_bound<upper_bound & lower_bound>=min(inputarray_x) & upper_bound<=max(inputarray_x) & size(inputarray_x)==size(inputarray_y)
    need=lower_bound:(upper_bound-lower_bound)/100000:upper_bound;
    needarray=interp1(inputarray_x,inputarray_y,need);
    sum=0;
    for i=1:100000
        sum=sum+(needarray(i)+needarray(i+1))*(upper_bound-lower_bound)/200000;
    end
elseif a(2) ~= b(2)
    sum='错误输入——请输入等数量的x，y矩阵';
elseif lower_bound>upper_bound
    sum='错误输入——输入上界应大于下界';
else
    sum='错误输入——上下界应在输入x的范围内';
end
end

