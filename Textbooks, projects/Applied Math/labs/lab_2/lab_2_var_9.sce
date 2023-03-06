function [y]=F(x)
    y=2*sin(8*x)/3+3*cos(x)/4
endfunction

x=[-4:0.5:4];
y=F(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('2*sin(8*x)/3+3*cos(x)/4')

plot(x,y)

fsolve([-2;2.5], F)
