function [] =circlefun(mymotorA,mymotorB)

 th = 0:pi/50:2*pi;
    xunit = 5 * cos(th) + 0;
    yunit = 5 * sin(th) + 0;
xradian=((2*pi*xunit)/17.59)*(180/pi);
yradian=((74.5*2*pi*yunit)/(25*360)*(180/pi));
rotation = xradian;
 rotationB = yradian;
 rotationmotorA = abs(readRotation(mymotorA));
 rotationmotorB = abs(readRotation(mymotorB));
 
 mymotorA.Speed =10;
mymotorB.Speed =10;
if((rotationmotorA >rotation) && (rotationmotorB >rotationB))
   stop(mymotorA);
   stop(mymotorB);
   
end

   
end



