leftmotor=motor(mylego,'A')
rightmotor=motor(mylego,'B')
frontmotor=motor(mylego,'C')
leftmotor.Speed=5
rightmotor.Speed=50


start(leftmotor)
start(rightmotor)
%stop(rightmotor); 
%stop(leftmotor);
 start(frontmotor) 




rotation=readRotation(leftmotor)%rotation for 6 rounds is 2164
%frontrotation=readRotation(frontmotor)
while 1
    rotation=readRotation(rightmotor)
    frontrotation=readRotation(frontmotor)
    frontrotation=abs(frontrotation)
    if rotation>2164
       % frontrotation=readRotation(frontmotor)
              
        if frontrotation<60
            frontmotor.Speed=10; 
          %  start(frontmotor) 
            
               % frontmotor.Speed=2;
        %stop(frontmotor);
        elseif frontrotation>=60 && frontrotation<=150
        frontmotor.Speed=-20;
        
        else
         stop(frontmotor);
         break;
        end
    else
         stop(frontmotor);
         break;
         
    end
end

        