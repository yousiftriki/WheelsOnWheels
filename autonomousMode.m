brick.SetColorMode(1, 2);
distance = brick.UltrasonicDist(3);
    spR = 56;
    spL = 55;
    spT = -20;
    bUR = -41;
    bUL = -40;

while 1
    color = brick.ColorCode(1);
    disp(color);
    disp(distance);
    if (color == 5)
        brick.StopAllMotors();
        pause(2);
        disp('red -- stop');
        brick.MoveMotor('A', spR);
        brick.MoveMotor('B', spL);
    elseif (color == 1)
        brick.MoveMotor('A', spR);
        brick.MoveMotor('B', spL);
        disp('black -- go forward');
        distance = brick.UltrasonicDist(3);
        if brick.TouchPressed(2) == 1
            disp('touch input sensed');
            brick.MoveMotor('A', bUR);
            brick.MoveMotor('B', bUL);
            pause(1.5);
            brick.StopAllMotors();
            if (distance < 60)
                disp('turn ultrason right');
                disp(distance);
                pause(1);
                brick.StopAllMotors();
                brick.MoveMotor('A', spT);
                brick.MoveMotor('B', spL);
                pause(.6);
            else
                disp('turn ultrason left');
                disp(distance);
                pause(1);
                brick.StopAllMotors();
                brick.MoveMotor('A', spR);
                brick.MoveMotor('B', spT);
                pause(.6);
            end
        end 
        if (distance > 50 && distance < 81)
            disp('dist turn left');
                brick.StopAllMotors();
                pause(1);
                brick.MoveMotor('A', spR);
                brick.MoveMotor('B', spT);
                pause(0.8);
                brick.StopAllMotors();
                brick.MoveMotor('A', spR);
                brick.MoveMotor('B', spL);
                pause(3);
        end
    elseif (color == 2 || color == 3 || color == 4)
        pause(0.2);
        brick.StopAllMotors();
        disp('return to manual');
        manualMode();
    else
        brick.StopAllMotors();
    end
    pause(0.2);
end