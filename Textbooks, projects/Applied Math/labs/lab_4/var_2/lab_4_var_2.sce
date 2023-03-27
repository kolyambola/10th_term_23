a=%pi/4;
b=5*%pi/4;

x=a:b;
y=1+sin(x^2);
inttrap(x,y)

h=0.2;
x=a:h:b;
y=1+sin(x^2);
inttrap(x,y)

h=0.1;
x=a:h:b;
y=1+sin(x^2);
inttrap(y)

integrate('1+sin(x^2)','x',%pi/4,5*%pi/4)

deff('y=g(x)','1+sin(x^2)');
intg(%pi/4,5*%pi/4,g)
