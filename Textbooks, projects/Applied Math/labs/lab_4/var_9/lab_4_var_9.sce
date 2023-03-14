a=0.5;
b=2.5;

x=a:b;
y=log(x);
inttrap(x,y)

h=0.5;
x=a:h:b;
y=log(x);
inttrap(x,y)

h=0.1;
x=a:h:b;
y=log(x);
inttrap(y)

integrate('log(x)','x',0.5,2.5)

deff('y=g(x)','log(x)');
intg(0.5,2.5,g)
