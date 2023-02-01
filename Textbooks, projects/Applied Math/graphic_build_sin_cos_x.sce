x = [-2*%pi:0.1:2*%pi];
y = sin(cos(x));
plot(x, y, 'r');
xgrid();
xtitle('sin(cos(x)', 'X', 'Y');
a = gca();
a.x_location = 'origin';
