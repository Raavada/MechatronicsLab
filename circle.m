function h = circle(x,y,r,mymotorA,mymotorB)
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = startmotor(xunit, yunit,mymotorA,mymotorB);
hold off