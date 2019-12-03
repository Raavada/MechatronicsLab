function []=downpencil(mymotorC)
resetRotation(mymotorC)
mymotorC.Speed =0;
%down
start(mymotorC);
mymotorC.Speed =0;

start(mymotorC);
while 1
 rotation = abs(readRotation(mymotorC));
  mymotorC.Speed = 20;
    if (rotation>70)
    stop(mymotorC);
  
    break;
    end
   
end