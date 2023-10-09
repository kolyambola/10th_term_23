x=[0 0.448 0.896 1.344 1.792 2.24];
y=[-7.136 -6.925 -6.705 -6.474 -6.234 -5.994];

function [zr]=G(c,z)
    zr=z(2)-c(1)-c(2)*z(1)-c(3)*z(1)^2
endfunction

z=[x;y];
c=[0;0;0;0];
[a,err]=datafit(G,z,c)