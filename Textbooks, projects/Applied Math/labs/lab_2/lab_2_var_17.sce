function [y]=F(x)
    y=sin(2*((x-2)^2))/exp(x/4)-0.1*x
endfunction

x=[-4:0.5:4];
y=F(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('sin(2*((x-2)^2))/exp(x/4)-0.1*x')

plot(x,y)

fsolve([1;3;4], F)
