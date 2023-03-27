x=[2 4 5 6 8 9 11 12 13 15 16 18];
y=[9 15 20 22 33 37 45 50 54 56 60 63];

[a1,a2]=reglin(x,y)

x_pred=25;
a1+a2*x_pred

//коэф корреляции
r=sum((x-mean(x)).*(y-mean(y)))/sqrt(sum((x-mean(x))^2)*sum((y-mean(y))^2))

//индекс корреляции
R=sqrt(1-sum((y-(a1+a2*x))^2)/sum((y-mean(y))^2))

t=0:30;
Yt=a1+a2*x_pred;
plot2d(x,y,-4);
plot2d(t,Yt);
