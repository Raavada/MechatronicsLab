close all;
clear all;
clc;
mylego = legoev3('usb');
mymotorA = motor(mylego,'A');
mymotorB = motor(mylego,'B');
mymotorC = motor(mylego,'C');
mymotorA.Speed =0;
mymotorB.Speed =0;
mymotorC.Speed =0;
start(mymotorA);
start(mymotorB);
start(mymotorC);
resetRotation(mymotorA)
resetRotation(mymotorB)
% resetRotation(mymotorC)
rotationA = abs(readRotation(mymotorA));
 mymotorA.Speed =-20;
while 1
    
%     
    
    if (rotationA >= 200)
    stop(mymotorA);
    break;  
    end
         % motorbfrwd(mymotorB)        
     % break;     
         
end
    
resetRotation(mymotorA)
% while 1
%       mymotorA.Speed =20;
%        start(mymotorA)     
%     if (rotationA>300)
%           stop(mymotorA)  
%           % motorbreverse(mymotorB)        
%       else
%        
%         stop(mymotorA)
%         stop(mymotorB)
%         break;      
%     end
% end    
