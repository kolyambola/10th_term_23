function [y]=F(x)
    y=log2(x+4)-1/2*(sin(((x+6)/3)^3)+5)
endfunction

x=[0:0.5:7];
y=F(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('log2(x+4)-1/2*(sin(((x+6)/3)^3)+5)')

plot(x,y)

fsolve([0;1;2;3], F)
