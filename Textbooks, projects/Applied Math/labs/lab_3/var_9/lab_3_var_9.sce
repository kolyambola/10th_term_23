A_1=[4 4 4 8;0 -8 -2 6;-2 2 -8 8;0 -8 2 -6];
b_1=[-12;26;0;22];
det(A_1)
A_inv=inv(A_1);
x_1=A_inv*b_1

A_2=[4 4 4 8;0 -8 -2 6;-2 2 -8 8;0 -8 2 -6];
b_2=[-12;26;0;22];
x_2=linsolve(A_2,b_2)