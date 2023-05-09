x=[-2.5 -1.5 -0.5 0.5 1.5 2.5];
y=[-1.598 -2.97 -5.966 -8.917 -5.043 -1.997];

function [zr]=G(c,z)
    zr=z(2)-c(1)-c(2)*z(1)-c(3)*z(1)^2
endfunction

z=[x;y];
c=[0;0;0;0];
[a,err]=datafit(G,z,c)
