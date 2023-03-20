a=0.14;
b=3.67;

//x=a:b;
//y=1/(sin(log(sqrt(5*x-x^2))/cos(3*x)));
//inttrap(x,y)

//h=0.5;
//x=a:h:b;
//y=1/(sin(log(sqrt(5*x-x^2))/cos(3*x)));
//inttrap(x,y)

h=0.1;
x=a:h:b;
y=1/(sin(log(sqrt(5*x-x^2))/cos(3*x)));
inttrap(y)

//integrate('1/(sin(log(sqrt(5*x-x^2))/cos(3*x)))','x',0.14,3.67)

deff('y=g(x)','y=1/(sin(log(sqrt(5*x-x^2))/cos(3*x)))');
intg(0.14,3.67,g)
