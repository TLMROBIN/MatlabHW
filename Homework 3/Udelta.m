function U = Udelta(foo,X,V_X,D_X,U_b)
% plese input a sym function foo and input the Matrix of its Variables
%like input F(x,y), you need to input "F = sym('***')" and "syms x y". 
%to get the specific U_delta (= [Ua^2 + Ub^2]^1/2 ) , you also need to
%input each U_xi of each variables and Ub of the whole function.
lens = length(X);
derivatives_usqure = zeros(1,lens);
for n = (1:lens)
    derivative = subs( diff(foo,X(n),1), X, V_X);
    derivatives_usqure(n) = ( derivative * D_X(n) )^2;
end
U_a = sqrt( sum(derivatives_usqure) );
U = sqrt( U_a^2 + U_b^2 );
end