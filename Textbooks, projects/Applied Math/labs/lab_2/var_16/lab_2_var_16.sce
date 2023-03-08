function [y]=F(x)
    y=1/2*sin(((x+3)^3)/2)+log(x+2)/2-1
endfunction

x=[-1.5:0.5:5];
y=F(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('1/2*sin(((x+3)^3)/2)+log(x+2)/2-1')

plot(x,y)

fsolve([1;3;4], F)
