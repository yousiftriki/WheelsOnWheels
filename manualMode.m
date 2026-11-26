global key
InitKeyboard();

while 1
    pause(0.1);

switch key
     case 'leftarrow'
         brick.MoveMotor('B', -10); % left motor
         brick.MoveMotor('A', 20); % right motor

      case 'rightarrow'
          brick.MoveMotor('A', -10);
          brick.MoveMotor('B', 20);

      case 'uparrow'
          brick.MoveMotor('A', 25);
          brick.MoveMotor('B', 25);

      case 'downarrow'
          brick.MoveMotor('A', -25);
          brick.MoveMotor('B', -25);
	
      case 'q'
          brick.StopAllMotors();

    case 'e'
        brick.MoveMotor('D', -1);
        pause(0.5);
        brick.StopMotor('D');

    case 'r'
        brick.MoveMotor('D', 1);
        pause(0.3);
        brick.StopMotor('D');

    case 'a'
        autonomousMode();
end
end
    CloseKeyboard();