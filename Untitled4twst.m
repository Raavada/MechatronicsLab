close all;
clear all;
clc;
mylego = legoev3('usb');
mymotorA = motor(mylego,'A');
mymotorB = motor(mylego,'B');
mymotorC = motor(mylego,'C');
mymotorA.Speed =0;
mymotorB.Speed =0;
mymotorC.Speed =0;
start(mymotorA);
start(mymotorB);
start(mymotorC);
resetRotation(mymotorA)
resetRotation(mymotorB)
resetRotation(mymotorC)

while 1
    rotation = abs(readRotation(mymotorA));
    rotationC = abs(readRotation(mymotorC));
     mymotorA.Speed =-20;
    if (rotation>100)
        stop(mymotorA);
    end       
      break;     
         
end
    
resetRotation(mymotorA)
while 1
      mymotorA.Speed =20;
       start(mymotorA)     
    if (rotation>300)
          stop(mymotorA)  
          motorbreverse(mymotorB)        
      else
       
        stop(mymotorA)
        stop(mymotorB)
        break;      
    end
end    
