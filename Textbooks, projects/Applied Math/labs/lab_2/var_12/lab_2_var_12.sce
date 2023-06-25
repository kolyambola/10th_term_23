function [y]=F(x)
    y=cos(((x+2)^2)/2)*log((x+3)/2)
endfunction

x=[-2:0.5:5];
y=F(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('cos(((x+2)^2)/2)*log((x+3)/2)')

plot(x,y)

fsolve([2;3], F)
