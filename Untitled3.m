mysonicsensor = sonicSensor(myev3)
distance = readDistance(mysonicsensor)
mygyrosensor = gyroSensor(myev3)
angle = readRotationAngle(mygyrosensor)


distance = brick.UltrasonicDist(1);  % Get distance to the nearest object.
display(distance);     

brick.GyroCalibrate(1);