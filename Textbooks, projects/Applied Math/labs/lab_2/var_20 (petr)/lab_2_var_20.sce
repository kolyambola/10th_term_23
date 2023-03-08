function [y]=F(x)
    y=cos(5*x+10)/log(4*x+8)
endfunction

x=[-1.5:0.5:5];
y=F(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('cos(5*x+10)/log(4*x+8)')

plot(x,y)

fsolve([1;4], F)
