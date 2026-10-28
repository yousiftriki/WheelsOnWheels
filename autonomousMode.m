distance = brick.UltrasonicDist(3);

while 1
    brick.MoveMotor('AB', 50);
    disp('go forward');

    if (color == 1 || color == 3 || color == 4)
        pause(3);
        brick.StopAllMotors();
        manualMode();
    else
        if distance > 70
            disp('turn ultrason');
            brick.StopAllMotors();
            brick.MoveMotor('B', 50);
            brick.MoveMotor('A', -20);
            pause(0.5);
        end
        if brick.TouchPressed(2) == 1
            disp('touch input sensed');
            brick.MoveMotor('AB', -20);
            pause(3);
            brick.StopAllMotors();
            if distance < 50
                brick.MoveMotor('A', 50);
                brick.MoveMotor('B', -20);
                disp('input turn left');
            else
                brick.MoveMotor('B', -20);
                brick.MoveMotor('A', 50);
                disp('input turn right');
            end
        end
    end
end