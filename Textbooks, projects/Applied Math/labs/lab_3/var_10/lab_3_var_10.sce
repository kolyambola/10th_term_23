A_1=[2 8 6 0;0 -4 6 8;-8 4 0 10;-6 -2 -4 2];
b_1=[-28;6;-20;4];
det(A_1)
A_inv=inv(A_1);
x_1=A_inv*b_1

A_2=[2 8 6 0;0 -4 6 8;-8 4 0 10;-6 -2 -4 2];
b_2=[-28;6;-20;4];
x_2=linsolve(A_2,b_2)