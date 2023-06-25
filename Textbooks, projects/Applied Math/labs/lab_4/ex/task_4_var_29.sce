a=0.1;
b=1.1;

x=a:b;
y=sqrt(x)*exp(-x);
inttrap(x,y)

h=0.5;
x=a:h:b;
y=sqrt(x)*exp(-x);
inttrap(x,y)

h=0.1;
x=a:h:b;
y=0.5+x*log10(x);
inttrap(y)

integrate('0.5+x*log10(x)','x',1,2)

deff('y=g(x)','y=0.5+x*log10(x)');
intg(1,2,g)
