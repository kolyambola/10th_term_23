x=[-2.4 -0.96 0.48 1.92 3.36 4.8];
y=[8.75 8.75 8.75 8.75 8.75 8.75];

function [zr]=G(c,z)
    zr=z(2)-c(1)-c(2)*z(1)-c(3)*z(1)^2
endfunction

z=[x;y];
c=[0;0;0;0];
[a,err]=datafit(G,z,c)