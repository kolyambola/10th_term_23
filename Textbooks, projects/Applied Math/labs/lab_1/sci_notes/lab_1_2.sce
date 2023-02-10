//1
a = 23.5+(75/(2+1/5))/(2-4/7)

//2
deff('[f]=func_1(x)', 'f=3*((sin(x)+1)/5)');
func_1(%pi)
func_1(%pi/2)

//3
deff('[f]=func_2(x)', 'f=2*cos(x)');
x=[0:0.01:%pi];
func_2(x)


//4
A=[1 -2 5; -1 10 7; 3 4 -5]
B=[-6 3 -2; 1 5 4; 2 -3 8]
A+B
A-B
A*B
A.*B
A.\B
A./B

//5
x=[-2*%pi:0.01:2*%pi];
y=sin(2*x);
//plot2d(x,y,style=6,axesflag=5); xgrid(1)

//6
t=[0:0.01:8*%pi];
R=4;
x=3/4*R*cos(t/4)+1/4*R*cos((3*t)/4);
y=3/4*R*sin(t/4)-1/4*R*sin((3*t)/4);
//plot2d(x,y,style=3,axesflag=5); xgrid(1)

//7
phi=[-%pi:0.01:%pi];
rho=10*sin(3*phi);
//clf(); 
//xset("color",6);
//polarplot(phi,rho,style=5)

//8
[x,y]=meshgrid(-1:0.1:1,-1:0.1:1);
z=x.^2+y.^2;
mesh(x,y,z)

