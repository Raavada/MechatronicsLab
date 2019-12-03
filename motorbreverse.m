function []=motorbreverse(mymotorB)
resetRotation(mymotorB)
while 1
    rotationb= abs(readRotation(mymotorB));
     mymotorB.Speed = 15;
     start(mymotorB);
    if (rotationb >= 149)
       stop(mymotorB);
       % start(mymotorB)   
         break; 
    end  
    
    
end
end
