a=0.5;
b=2.5;

x=a:b;
y=x/(1+x^2);
//inttrap(x,y)

h=0.5;
x=a:h:b;
y=x/(1+x^2);
//inttrap(x,y)

h=0.1;
x=a:h:b;
y=x/(1+x^2);
inttrap(y)

integrate('x/(1+x^2)','x',0.5,2.5)

deff('y=g(x)','x/(1+x^2)');
intg(0.5,2.5,g)
