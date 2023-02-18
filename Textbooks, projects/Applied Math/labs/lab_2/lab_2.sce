function [y]=F(x)
    y=exp(x)/5-2*(x-1).^2
endfunction

x=[-1:0.01:6];
y=F(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('exp(x)/5-2*(x-1)^2')

plot(x,y)

fsolve([0;2;5],F)
