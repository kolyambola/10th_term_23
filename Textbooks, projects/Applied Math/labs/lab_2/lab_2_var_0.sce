function [y]=F(x)
    y=sin(3*x)^2-log10(x+2)
endfunction

x=[-1.5:0.5:5];
y=F(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('sin(3*x)^2-log10(x+2)')

plot(x,y)

fsolve([1.5;2.5;3], F)
