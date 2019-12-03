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
rotationB = abs(readRotation(mymotorB));
downpencil(mymotorC)
while 1
 rotation = abs(readRotation(mymotorA));
  mymotorA.Speed = -20;
  motorbfrwd(mymotorB)
    if (rotation>90)
    stop(mymotorA);
    
    break;
    end
    
end
resetRotation(mymotorA)
while 1
    rotation = abs(readRotation(mymotorA));
    start(mymotorA);
    mymotorA.Speed = 20;
    motorbreverse(mymotorB)
    if(rotation>90)
    stop(mymotorA);
    
  % stop(mymotorB);
   break;
   
    end
    
end
uppencil(mymotorC)