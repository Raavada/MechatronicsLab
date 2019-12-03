myev3.beep();
distance=UltrasonicDist1(myev3)
reading = UltrasonicDist(distance);
%distance = myev3.UltrasonicDist(1);  % Get distance to the nearest object.
display(reading);  