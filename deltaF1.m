function [e]=deltaF1(F,func,d,value,value_d);
n=size(func);
%n is the number of variaties.
for i=1:n(2);
    dF(i)=diff(F,func(i),1);
    %dF is a matrix containing the diffs of every variaties.
    uF(i)=(dF(i)*d(i))^2;
    %uF is a matrix of middle variaties we need.
end
e=sqrt(sum(uF));
%e is the unsure variaties.
e=subs(e,[func,d],[value,value_d])
%replace the variaties with values.
