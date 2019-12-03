clc ;

mylego = legoev3('usb');
mymotorA = motor(mylego,'A');
resetRotation(mymotorA)

mymotorB = motor(mylego,'B');
resetRotation(mymotorB)
while (1)
    rotation = readRotation(mymotorA)
    if(rotation>150)
        mymotorA.Speed =-10;
        start(mymotorA)
        
        
    elseif(rotation>150)
        stop(mymotorA)
        pause(10)
           while(1)
                mymotorA.Speed =20;
                start(mymotorA)
                if(rotation>210)
                  break;
                end
            end
        break;
        
        
    end
end
    

