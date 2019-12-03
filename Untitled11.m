myev3.beep
motorA=motor(myev3,'A')
%angle=40;
motorA.Speed=10;
start(motorA);
%resetRotation(motorA)

while 1,
    rotation=readRotation(motorA)
   % rotation=rotation+rotation
    if rotation>=150
        stop(motorA);
    else
        
        continue
    end
end 


    stop(motorA);     
%motorA.Speed=50;
%disp (currentangle);
%stop(motorA);