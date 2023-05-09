x=[-5 -4 -3 -2 -1 0];
y=[-6.489 -5.519 -4.56 -3.644 0 12.933];

function [zr]=G(c,z)
    zr=z(2)-c(1)-c(2)*z(1)-c(3)*z(1)^2
endfunction

z=[x;y];
c=[0;0;0;0];
[a,err]=datafit(G,z,c)
