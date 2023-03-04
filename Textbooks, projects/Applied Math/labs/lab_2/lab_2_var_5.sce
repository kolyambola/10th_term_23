function [y]=F(x)
    y=cos((x-8)^2)/3+log(x+3)-1.5
endfunction

x=[-2.5:0.5:5];
y=F(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('cos((x-8)^2)/3+log(x+3)-1.5')

plot(x,y)

fsolve([1;2], F)
