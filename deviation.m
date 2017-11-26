function dev=deviation()
X='';
X=input('input varieties');%例如'G m1 m2 R',带引号，间以空格
S=regexp(X,'\s+','split');
X=char(S);
len=length(X(:,1));
F=sym(input('input formula'));
V=input('input values(in order)');
V=str2num(V);
E=input('input deviation(in order)');
E=str2num(E);
dev_2=0.0;
for i=1:len
    dev_2=dev_2+diff(F,X(i,:),1)^2*E(i)^2;
end
dev=dev_2^(0.5);
for j=1:len
    dev=subs(dev,X(j,:),V(j));
end
end
