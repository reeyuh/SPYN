brick.SetColorMode(4, 2);
 distance = brick.UltrasonicDist(2);
 color_rgb = brick.ColorCode(4);
 fprintf("Color is %f", color_rgb);
 count = 0;
 count1 = 0;
 global key
 InitKeyboard();
if brick.TouchPressed(1) == 1
   count = count + 1;
end
while count < 20
 color_rgb = brick.ColorCode(4);
 distance = brick.UltrasonicDist(2);
 brick.MoveMotor('AD', 65);
 if color_rgb == 5 %%red
             brick.StopMotor('AD');
             pause(1);
             brick.MoveMotor('AD', 65);
 end
 if color_rgb == 4
     count1 = count1 + 1;
     if count1 > 1
         brick.StopMotor('AD');
     end
   
 end
 if color_rgb == 2 %%Blue
               brick.StopMotor('AD');
               pause(1);
           while color_rgb == 2
              pause(.1)
              switch key
                       case 0
                           brick.StopMotor('AD');
                       case 'uparrow'
                           brick.MoveMotor('A', -15);
                           brick.MoveMotor('D', -15);
                       case 'downarrow'
                           brick.MoveMotor('A', 15);
                           brick.MoveMotor('D', 15);
                       case 'leftarrow'
                           brick.MoveMotor('A', -15);
                           brick.MoveMotor('D', 15);
                       case 'rightarrow'
                           brick.MoveMotor('A', 15);
                           brick.MoveMotor('D', -15);
                  case 'l'
                      brick.MoveMotor('C', 10);
                  case 'd'
                     brick.MoveMotor('C', -1);
                     pause(.2);
                  case 'q'
                      break;
              end
           end
               brick.MoveMotor('AD', 65);
               pause(2);
                  
  end
 if color_rgb == 3 %%Green
     brick.StopMotor('AD');
     pause(1);
     while color_rgb == 2
              pause(.1)
              switch key
                       case 0
                           brick.StopMotor('AD');
                       case 'uparrow'
                           brick.MoveMotor('A', -15);
                           brick.MoveMotor('D', -15);
                       case 'downarrow'
                           brick.MoveMotor('A', 15);
                           brick.MoveMotor('D', 15);
                       case 'leftarrow'
                           brick.MoveMotor('A', -15);
                           brick.MoveMotor('D', 15);
                       case 'rightarrow'
                           brick.MoveMotor('A', 15);
                           brick.MoveMotor('D', -15);
                  case 'l'
                      brick.MoveMotor('C', 10);
                  case 'd'
                     brick.MoveMotor('C', -10);
                  case 'q'
                      break;
              end
           end
    
 end
 if distance > 55
     if distance < 500
        brick.StopMotor('AD');
        pause(1);
        brick.MoveMotor('A', 29);
        pause(2);
        brick.StopMotor('A');
        brick.MoveMotor('AD', 65);
        pause(2);
     end
 end
 if brick.TouchPressed(1) == 1
   disp(distance)
   brick.StopMotor('AD');
   brick.MoveMotor('AD', -10);
   pause(2);
   brick.StopMotor('AD');
     if distance > 55
           %%brick.TurnRight;
            pause(2);
        brick.MoveMotor('A', 30);
        pause(2);
       brick.StopMotor('A');
     else
         %%brick.TurnLeft;
         pause(2)
         brick.MoveMotor('D', 18);
         pause(2);
         brick.StopMotor('D');
    end
     brick.MoveMotor('AD', 65);
 end
end




