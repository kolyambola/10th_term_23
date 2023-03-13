a=-2;
b=1;

x=a:b;
y=x/(x^3+16);
inttrap(x,y)

h=0.5;
x=a:h:b;
y=x/(x^3+16);
inttrap(x,y)

h=0.1;
x=a:h:b;
y=x/(x^3+16);
inttrap(y)

integrate('x/(x^3+16)','x',-2,1)

deff('y=g(x)','y=x/(x^3+16)');
intg(-2,1,g)
