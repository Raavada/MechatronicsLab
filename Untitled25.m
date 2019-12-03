clc ;
clear all;
mylego = legoev3('usb');
mymotorA = motor(mylego,'A');
resetRotation(mymotorA)

mymotorB = motor(mylego,'B');
resetRotation(mymotorB)
while (1)
    if(readRotation(mymotorA)>150)
        mymotorA.Speed =-5;
        start(mymotorA)
        
        
    elseif(readRotation(mymotorA)>150)
        stop(mymotorA)
        pause(10)
        %Code for motorB
                    while (1)
                         if(readRotation(mymotorB)>150)
                             mymotorB.Speed =-5;
                               start(mymotorB)


                          elseif(readRotation(mymotorB)>150)
                                 stop(mymotorB)
                                 pause(10)

                                 while(1)
                                     mymotorB.Speed =5;
                                        start(mymotorB)
                                        if(readRotation(mymotorB)>310)
                                             break;
                                        end
                                 end
                                break;


                         end
                     end
            %end of code

            while(1)
                mymotorA.Speed =20;
                start(mymotorA)
                if(readRotation(mymotorA)>210)
                  break;
                end
            end
        break;
        
        
    end
end
    

