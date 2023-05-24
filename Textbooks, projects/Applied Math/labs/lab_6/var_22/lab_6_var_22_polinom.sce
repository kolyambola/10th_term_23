x=[-1.2 -0.52 0.16 0.84 1.52 2.2];
y=[1.02 0.59 0.06 -0.13 0.69 1.79];

function [zr]=G(c,z)
    zr=z(2)-c(1)-c(2)*z(1)-c(3)*z(1)^2
endfunction

z=[x;y];
c=[0;0;0;0];
[a,err]=datafit(G,z,c)
