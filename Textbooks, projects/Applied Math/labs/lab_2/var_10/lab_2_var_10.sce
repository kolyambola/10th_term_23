function [y]=F(x)
    y=cos(5*x)*log((x+3)/2)
endfunction

x=[-2:0.5:4];
y=F(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('cos(5*x)*log((x+3)/2)')

plot(x,y)

fsolve([2;3], F)
