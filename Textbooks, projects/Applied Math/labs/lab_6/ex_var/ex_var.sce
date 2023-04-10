//6.1
//dx/dt+x=sin(xt),x(0)=1.5
function yd=f(t,x),yd=-x+sin(t*x),endfunction;

x0=1.5;
t0=0;
t=0:1:35;

y=ode(x0,t0,t,f);
//plot(t,y);

//6.2
function dy=syst(t,y)
    dy=zeros(2,1);
    dy(1)=cos(y(1)*y(2));
    dy(2)=sin(y(1)+y(2)*t);
endfunction

x0=[0;0];
t0=0;
t=0:1:10;
y=ode(x0,t0,t,syst);
//plot(t,y);

//6.3
B=[119.46 185.38 126.88 121.03; -10.395 -10.136 -3.636 8.577; -53.302 -85.932 -63.182 54.211; -115.58 -181.75 -112.8 -199];

function dx=syst1(t,x),dx=B*x,endfunction
function J=Jac(t,y),J=B,endfunction

x0=[1;1;1;1];
t0=0;
t=0:0.01:5;
y=ode("stiff",x0,t0,t,syst1,Jac)
//plot(t,y);

//6.5
function F=FF(t,x)
    F=[-4*x(1)-13*x(2)+exp(t);x(1)];
endfunction

x0=[1;-1];
t0=0.25;
t=0.25:0.05:2;
y=ode("stiff",x0,t0,t,FF);
//plot(t,y)

//mkr exx
deff('[y]=p(x)','y=exp(x)')
deff('[y]=q(x)','y=2*x')
deff('[y]=f(x)','y=x^3')

alpha1=2;
alpha2=-2.5;
Ac=0;
beta1=3;
beta2=-3.4;
Bc=5;
a1=0.1;
b1=1.3;
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
