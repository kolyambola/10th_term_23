x=[0 0.3 0.6 0.9 1.2 1.5];
y=[-2.465 -2.465 -2.465 -2.465 -2.465 -2.465];

function [zr]=G(c,z)
    zr=z(2)-c(1)-c(2)*z(1)-c(3)*z(1)^2
endfunction

z=[x;y];
c=[0;0;0;0];
[a,err]=datafit(G,z,c)
