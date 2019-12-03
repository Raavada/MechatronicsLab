leftmotor=motor(myev3,'A')
rightmotor=motor(myev3,'B')
frontmotor=motor(myev3,'C')
leftmotor.Speed=1
rightmotor.Speed=50


if 10<100
            frontmotor.Speed=-20
            start(frontmotor) 
               % frontmotor.Speed=2;
        %stop(frontmotor);
    %    elseif (frontrotation>100) && (frontrotation<150)
     %  frontmotor.Speed=-2;
       else
         stop(leftmotor);
end