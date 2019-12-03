function []=motorb(mymotorB)
%mylego = legoev3('usb');
%mymotorB = motor(mylego,'B');
resetRotation(mymotorB)

while 1
    rotation = abs(readRotation(mymotorB));
    if (rotation<100)
       %  pause(3);
        mymotorB.Speed =-20;
       % start(mymotorB)
        
        
        
        
    elseif (rotation>100 && rotation<120)
         stop(mymotorB)
         
         resetRotation(mymotorB)
         rotation =121;
    elseif (rotation>=121 && rotation<=320)
       %here
      % rotation =320;
        mymotorB.Speed =20;
        start(mymotorB)
        
    else
        stop(mymotorB)
        break;
        
        
         
        
        
    end
    
    
end



end