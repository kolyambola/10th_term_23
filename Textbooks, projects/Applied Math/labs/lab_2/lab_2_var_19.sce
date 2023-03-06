function [y]=F(x)
    y=sin(10*x-20)/exp(((x-2)^2)/5)+0.25*x
endfunction

x=[-4:0.5:4];
y=F(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('sin(10*x-20)/exp(((x-2)^2)/5)+0.25*x')

plot(x,y)

//fsolve([1;3], F)
