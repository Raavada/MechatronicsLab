mygyro=gyroSensor(myev3)
angle=readRotationAngle(mygyro)
rate=readRotationAngle(mygyro)
motorA.Speed=10;
start(motorA);
while 1,
    rotation=readRotation(motorA)
   % rotation=rotation+rotation
    if rotation>=angle
        stop(motorA);
    else
        
        continue
    end
end 

