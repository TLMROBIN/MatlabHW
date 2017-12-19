function jifen=nihe(mat1,mat2,a,b,n)
x=mat1;
y=mat2;
n=1;
A=polyfit(x,y,n);
y1=polyval(A,x);  
x2=a:0.01:b;
y2= polyval(A,x2);
jifen=sum(sum(y2.*0.01))

