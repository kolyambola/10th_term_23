a=5;
b=8;

x=a:b;
y=6*x^2-3*x+5;
inttrap(x,y)

h=0.5;
x=a:h:b;
y=6*x^2-3*x+5;
inttrap(x,y)

h=0.1;
x=a:h:b;
y=6*x^2-3*x+5;
inttrap(y)

integrate('6*x^2-3*x+5','x',5,8)

deff('y=g(x)','6*x.^2-3*x+5');
intg(5,8,g)
