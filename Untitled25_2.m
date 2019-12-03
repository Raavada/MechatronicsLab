clc;
clear all;

mylego = legoev3('usb');
mymotorB = motor(mylego,'B');
resetRotation(mymotorB)
while (1)
    if(readRotation(mymotorB)>105)
        mymotorB.speed =-20;
        start(mymotorB)
        
        
    elseif(readRotation(mymotorB)>105)
        stop(mymotorB)
        pause(5)
        
        while(1)
            mymotorB.speed =20;
            start(mymotorB)
            if(readRotation(mymotorB)>210)
              break;
            end
        end
        break;
        
        
    end
end
    

