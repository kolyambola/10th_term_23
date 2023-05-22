a=5;
b=8;

x=a:b;
y=(exp(x)-1)*(exp(2*x)+1)/exp(x);
inttrap(x,y)

h=0.5;
x=a:h:b;
y=(exp(x)-1)*(exp(2*x)+1)/exp(x);
inttrap(x,y)

h=0.1;
x=a:h:b;
y=(exp(x)-1)*(exp(2*x)+1)/exp(x);
inttrap(y)

integrate('(exp(x)-1)*(exp(2*x)+1)/exp(x)','x',5,8)

deff('y=g(x)','(exp(x)-1)*(exp(2*x)+1)/exp(x)');
intg(5,8,g)
