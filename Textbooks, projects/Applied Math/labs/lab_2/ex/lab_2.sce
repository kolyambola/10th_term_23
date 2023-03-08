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

//plot(x,y)

//fsolve([0;2;5],F)

//4
function [y]=F_1(x)
    y=(sin((x-8)^2))/3-(x-2)/5
endfunction

x=[-5:0.5:5];
y=F_1(x);

a=gca();
a.x_location="origin";
a.y_location="origin";
xgrid();
xtitle('sin(x-8)^2/3-(x-2)/5')

plot(x,y)

fsolve([0;3;3.5], F_1)
