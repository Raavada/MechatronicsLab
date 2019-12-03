function []=uppencil(mymotorC)
mymotorC.Speed =0;

start(mymotorC);

resetRotation(mymotorC)
%up
while 1
 rotation = abs(readRotation(mymotorC));
  mymotorC.Speed = -20;
    if (rotation>75)
    stop(mymotorC);
  
    break;
    end
   
end

