function [y]=F(x)
    y=sin((x-8)^2)/3-(x-2)/5
endfunction

x=[-5:0.5:5];
y=F(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('sin((x-8)^2)/3-(x-2)/5')

plot(x,y)

fsolve([1;3.5], F)
