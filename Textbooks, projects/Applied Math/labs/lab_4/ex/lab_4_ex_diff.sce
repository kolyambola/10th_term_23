h=5;
x=50:5:65;
y=log10(x)

dy=diff(y)

dy_2=diff(y,2)

dy_3=diff(y,3)

Y=(dy(1)-dy_2(1)/2+dy_3(1)/3)/h

1/log(10)/x(1)

Y=(dy-dy_2(1:$-1)/2+dy_3(1:$-2)/3)/h

(1/log(10))/x(1:$-1)
