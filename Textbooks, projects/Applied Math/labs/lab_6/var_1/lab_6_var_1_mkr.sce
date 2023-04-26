x=[0.1 0.52 0.94 1.36 1.78 2.2];
y=[1 1 1 1 1 1];

function [zr]=G(c,z)
    zr=z(2)-c(1)-c(2)*z(1)-c(3)*z(1)^2
endfunction

z=[x;y];
c=[0;0;0;0];
[a,err]=datafit(G,z,c)
