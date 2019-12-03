close all;
clear all;
clc;
mylego = legoev3('usb');
mymotorA = motor(mylego,'A');
resetRotation(mymotorA)

mymotorB = motor(mylego,'B');
resetRotation(mymotorB)


while 1
    rotation = abs(readRotation(mymotorA));
   % newrotation=abs(rotation);
       if (rotation<100)
        mymotorA.Speed =-10;
        start(mymotorA)
        mymotorB.Speed =-10;
        start(mymotorB)
       elseif(rotation>101 &&rotation<250)
           mymotorA.Speed =10;           
           mymotorB.Speed =10;
       else
           stop(mymotorB);
           stop(mymotorA);
        break;
           
       end
       


end
