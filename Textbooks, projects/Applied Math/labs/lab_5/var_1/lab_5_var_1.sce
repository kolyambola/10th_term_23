//линейная модель
x=[2 4 5 6 8 9 11 12 13 15 16 18];
y=[3 6 6 6 10 9 12 14 15 16 17 19];

[a1,a2]=reglin(x,y)

x_pred=21;
a1+a2*x_pred

//коэф корреляции
r=sum((x-mean(x)).*(y-mean(y)))/sqrt(sum((x-mean(x))^2)*sum((y-mean(y))^2))

//индекс корреляции
R=sqrt(1-sum((y-(a1+a2*x))^2)/sum((y-mean(y))^2))

t=0:22;
Yt=a1+a2*t;
//plot2d(x,y,-4);
//plot2d(t,Yt,leg='y=1.09+1.01x');

//квадратичная модель
function [zr]=G(c,z)
    zr=z(2)-c(1)-c(2)*z(1)-c(3)*z(1)^2
endfunction

z=[x;y];
c=[0;0;0;0];
[a,err]=datafit(G,z,c)

//plot2d(x,y,-4)
t=2:0.1:22;
Ptc=a(1)+a(2)*t+a(3)*t^2
//plot2d(t,Ptc,leg='0.94+1.05x-0.002x^2')

//экспоненциальная модель
function [zr]=F(c,z)
    zr=z(2)-c(1)*exp(z(1)*c(2))
endfunction

z=[x;y];
c=[0;0;0];
[a,S]=datafit(F,z,c)
t=2:0.1:22;
Yt=a(1)*exp(t*a(2));
plot2d(x,y,-4);
plot2d(t,Yt,leg='4.37e^0.09x');