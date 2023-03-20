a=4.3;
b=6.8;

x=a:b;
y=3*sqrt(x);
inttrap(x,y)

h=0.5;
x=a:h:b;
y=3*sqrt(x);
inttrap(x,y)

h=0.1;
x=a:h:b;
y=3*sqrt(x);
inttrap(y)

integrate('3*sqrt(x)','x',4.3,6.8)

deff('y=g(x)','y=3*sqrt(x)');
intg(4.3,6.8,g)
