a=5;
b=13;

x=a:b;
y=sqrt(2*x-1);
inttrap(x,y)

h=0.5;
x=a:h:b;
y=sqrt(2*x-1);
inttrap(x,y)

h=0.1;
x=a:h:b;
y=sqrt(2*x-1);
inttrap(y)

integrate('(2*x-1)^0.5','x',5,13)

deff('y=g(x)','y=sqrt(2*x-1)');
intg(5,13,g)
