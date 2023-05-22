//mkr
deff('[y]=p(x)','y=x+1.27')
deff('[y]=q(x)','y=0.24')
deff('[y]=f(x)','y=-2.1')

alpha1=-2.1;
alpha2=0;
Ac=1.6;
beta1=0;
beta2=2.8;
Bc=1;
a1=0;
b1=1.5;
n=4;

for i=1:n+1
    A(i,i)=0;
    B(i)=0;
end

h=(b1-a1)/n;

for k=1:n+1
    x(k)=a1+(k-1)*h;
end

for k=1:n-1
    A(k,k)=h^2*q(x(k))-h*p(x(k))+1;
    A(k,k+1)=h*p(x(k))-2;
    A(k,k+2)=1;
    B(k)=h^2*f(x(k));
end

A(n,1)=alpha1*h-alpha2;
A(n,2)=alpha2;
A(n+1,n)=-beta2;
A(n+1,n+1)=beta1*h+beta2;
B(n)=h*Ac;
B(n+1)=h*Bc;

y=linsolve(A,-B)

