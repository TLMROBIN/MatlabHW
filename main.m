syms M1 M2 R dM1 dM2 dR
G=sym('6.67*10^-11');
F=sym(G*M1*M2/R^2);
%input a function.
func=[M1,M2,R];
d=[dM1,dM2,dR];
%this is its variaties and unsure variaties.
prompt1='PLEASE INPUT THE VALUE matrix';
value=input(prompt1);
prompt2='PLEASE INPUT THE UNSURE VALUE matrix';
value_d=input(prompt2);
%prompt to input some value.
hanshu(F,func,value);
deltaF1(F,func,d,value,value_d);
%call the subfunctions.