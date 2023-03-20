a=2;
b=4;

x=a:b;
y=1/sqrt(50-x^2);
inttrap(x,y)

h=0.5;
x=a:h:b;
y=1/sqrt(50-x^2);
inttrap(x,y)

h=0.1;
x=a:h:b;
y=1/sqrt(50-x^2);
inttrap(y)

integrate('1/sqrt(50-x^2)','x',2,4)

deff('y=g(x)','1/sqrt(50-x^2)');
intg(2,4,g)
