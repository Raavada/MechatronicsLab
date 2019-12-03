function []=motorbfrwd(mymotorB)
resetRotation(mymotorB)
while 1
    rotationb = abs(readRotation(mymotorB));
     mymotorB.Speed =-15;
    if (rotationb >= 149)
       stop(mymotorB);
       % start(mymotorB)   
         break; 
    end  
    
    
end
end