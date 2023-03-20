a=1.5;
b=3.5;

//x=a:b;
//y=x.^2/(x-1);
//inttrap(x,y)

h=0.2;
x=a:h:b;
y=x^2/(x-1);
inttrap(x,y)

h=0.1;
x=a:h:b;
y=x^2/(x-1);
inttrap(y)

integrate('x^2/(x-1)','x',1.5,3.5)

deff('y=g(x)','x^2/(x-1)');
intg(1.5,3.5,g)
