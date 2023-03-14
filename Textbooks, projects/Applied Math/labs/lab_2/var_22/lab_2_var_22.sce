function [y]=F(x)
    y=2*sqrt(2*(cos((x/2+2)^2)^2)+2)-x/5-3
endfunction

x=[-4:0.5:4];
y=F(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('2*sqrt(2*(cos((x/2+2)^2)^2)+2)-x/5-3')

plot(x,y)

fsolve([0.5;3], F)
