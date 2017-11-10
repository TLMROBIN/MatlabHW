k=0;
m=1;
pik0=((2*2^0.5/9801)*1103)^-1
pim1=(pik0^-1+2*2^0.5*factorial(4*m)*(1103+26390*m)/(9801*(factorial(m)^4)*396^(4*m)))^-1
juzhen=zeros(5,6);
juzhen(:,6)=1;
juzhen(3,1:5)=1:5;
juzhen(4,1:5)=0:2:8;
juzhen(5,1:5)=[8,7,2,5,9]

