%input any function(F = f(x)) and calculate its value and uncertainty.
clear;clc;close all;
%if you want to use this progromme, follow the instructions and examples.
%identify the sym variables as : syms x1 x2 x3...
syms m1 m2 r
%input function as: F = f(x1,x2,x3...)
F = (6.67*10^(-11)*m1*m2)/(r^2);

% I.  get the value of each variable figure and output the F
% if you want to calculate the value, 
% pleach input each sym variable in the Variable_Matrix(upper)
% then input the Value of variables in the Valueof_Matrix(lower)
% WARNNING!!!!!!!
% Please MAKE SURE THAT THE VARIABLE CORRESPONDS TO ITS VALUES ONE BY ONE
Variable_Matrix = [m1 m2 r];
Valuesof_Matrix = [5.9*10^24,2*10^30,1.50*10^11];
%then use this:
Final_value = double(Value(F,Variable_Matrix,Valuesof_Matrix));
display(Final_value)


% II. get the UNCERTAINTY of F;
% pleach input each sym variable in the Variable_Matrix(1st)
% 2nd, input the Uncertainty of each variable in the 
% then input the Value of variables in the Valueof_Matrix(3rd)
% WARNNING!!!!!!!
% Please MAKE SURE THAT THE VARIABLE CORRESPONDS TO ITS VALUES ONE BY ONE
Variable_Matrix = [m1 m2 r];
Valuesof_Matrix = [5.9*10^24,2*10^30,1.50*10^11];
Uncertian_Matrix = [(0.1)*10^24,(0.2)*10^30,(0.01)*10^11];
%if you have U_b of the whole function,please input:
U_b = 0; %if dont have U_b, just input 0.
%then let's calculate it !
U = Udelta(F,Variable_Matrix,Valuesof_Matrix,Uncertian_Matrix,U_b);
display(U)

%thanks for using this program
%老师/师兄给个高分好不好~~~
%　　_∧_∧_____
%　／(*?ω?)   ／＼
% /|￣∪∪￣￣|＼／
%　|__________／
