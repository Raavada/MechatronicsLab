%mylego = legoev3('usb');

motorA = motor(mylego, 'A');
motorB = motor(mylego, 'B');
motorC = motor(mylego, 'C');

resetRotation(motorA)
resetRotation(motorC)
resetRotation(motorB)

%noOfRotation = startBackMotor(motorA, motorB, motorC);


while 1
    noOfRotation = startBackMotor(motorA, motorB, motorC);
    if noOfRotation>= 2164
        if noOfRotation<3000
            motorC.Speed = 10;
            start(motorC)
        elseif noOfRotation>=3000 && noOfRotation<3500
            motorC.Speed = -10;
            start(motorC)
        else
            stop(motorC)
        end
    else
        start(motorB)
    end
end

%function resetAngle = resetAngle(mylego)
%5mygyrosensor = gyroSensor(mylego);
%while noOfRotation>0
    
%resetAngle = readRotationAngle(mygyrosensor);
%end

function noOfRotation = startBackMotor(motorA, motorB, motorC)
%resetRotation(motorA)
%rotationC = readRotation(motorC);
rotationA = readRotation(motorA);
motorA.Speed = 40;
start(motorA)

%resetRotation(motorB)
rotationB = readRotation(motorB);
motorB.Speed = 40;
start(motorB)
noOfRotation = rotationA;
end