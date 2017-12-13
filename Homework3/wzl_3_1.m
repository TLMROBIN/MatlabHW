syms F G m1 m2 R
F=G*m1* m2 /R^2;
[ans1]=func1(F,G,m1,m2,R);
[ans2]=func2(F,G,m1,m2,R);
display('value=')
display(ans1)
display('deviation')
display(ans2)