//1.2.1
(2+3/7+sin(%pi/2)^3)/(5*sqrt(224))

//1.3.1
deff('[y]=myfunction(x)','y=x^2')
myfunction(2)

//1.3.2
deff('[z]=myfunction1(x,y)','z=x^2+y^2')
myfunction1(4,5)

//1.3.3
deff('[x1,x2]=myfunction2(a)','x1=sqrt(a); x2=-sqrt(a);')
[x1,x2]=myfunction2(4)

//1.3.4
function[y]=myfunction3(x)
    y=x^3
endfunction
myfunction3(2)

//1.4.1
x=[-10:0.001:10];
y=x^2;
//plot2d(x,y)

//1.4.2
x=[-10:0.001:10];
y=sin(x);
//plot2d(x,y,style=2,axesflag=5)

//1.4.3
x=[-10:0.001:10];
y=sin(x);
//plot2d(x,y,style=2,axesflag=5,rect=[-10,-10,10,10])

//1.4.4
x=[-10:0.001:10];
y=sin(x);
//plot2d(x,y,style=2,axesflag=5,rect=[-10,-10,10,10]); xgrid(3)

//1.4.5
x=[-5:0.001:5]';
y1=sin(x);
y2=sin(2*x);
y3=-x;
//plot2d(x,[y1 y2 y3],style=[3 4 5],axesflag=5,rect=[-5,-5,5,5]); xgrid(3)

//1.4.6
t=0:0.01:2*%pi;
r=4;
x=r*sin(t);
y=r*cos(t);
//plot2d(x,y,style=2,frameflag=3,rect=[-5,-5,5,5],axesflag=5); xgrid(3)

//1.4.7
phi=0:0.01:2*%pi;
rho=2*phi;
clf(); xset("color",2);
//polarplot(phi,rho,style=3,frameflag=3)

//1.4.8
[x,y]=meshgrid(-1:0.1:1,-1:0.1:1);
z=x.^2-y.^2;
//mesh(x,y,z)

//1.4.9
u=[-%pi/2:%pi/50:%pi/2];
v=[0:%pi/20:2*%pi];
x=cos(u)'*cos(v);
y=cos(u)'*sin(v);
z=sin(u)'*ones(v);
//plot3d3(x,y,z)

//1.4.10
x=[-5:0.01:5]';
subplot(2,2,1);
plot2d(x,sin(x),style=3,axesflag=5,rect=[-5,-5,5,5]);
subplot(2,2,2);
plot2d(x,cos(x),style=3,axesflag=5,rect=[-5,-5,5,5]);
subplot(2,2,3);
plot2d(x,abs(x),style=3,axesflag=5,rect=[-5,-5,5,5]);
subplot(2,2,4);
plot2d(x,x.*sin(x),style=3,axesflag=5,rect=[-5,-5,5,5]);

