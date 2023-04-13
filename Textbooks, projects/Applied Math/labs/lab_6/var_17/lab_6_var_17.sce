//1
//cos(4.5x-y^3)-1.3
function yd=f(t,x),yd=2*x^2+x*t+3*t^2,endfunction;

x0=1.2;
t0=2;
t=2:0.1:3;

//y=ode(x0,t0,t,f);
//plot(t,y);

//2 mkr
deff('[y]=p(x)','y=x^2+2.4')
deff('[y]=q(x)','y=2*x')
deff('[y]=f(x)','y=x-1.37')

alpha1=1.3;
alpha2=2.3;
Ac=0.3;
beta1=1.7;
beta2=-1.7;
Bc=2;
a1=-2.5;
b1=2.5;
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
