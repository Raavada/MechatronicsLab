myev3.beep();
mytouchsensor = touchSensor(myev3)
reading = readTouch(mytouchsensor);
while 3
    touch = readTouch(mytouchsensor); % Read a touch sensor connected to port 3
    if touch
        myev3.beep();     % Beep if the sensor was touched.
        break;            % End program
    end
end

display(reading);   

%distance = brick.Ult
distance = UltrasonicDist(1);  % Get distance to the nearest object.
display(distance);  
%rasonicDist(SensorPort);