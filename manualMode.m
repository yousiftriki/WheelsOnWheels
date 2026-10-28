global key
InitKeyboard();

while 1
    pause(0.1);

switch key
     case 'leftarrow'
         brick.MoveMotor('B', -60); % left motor
         brick.MoveMotor('A', 120); % right motor
           disp('Left arrow pressed!');

      case 'rightarrow'
          brick.MoveMotor('A', -60);
          brick.MoveMotor('B', 120);
           disp('Right arrow pressed!');

      case 'uparrow'
          brick.MoveMotor('A', 75);
          brick.MoveMotor('B', 75);
          disp('Up arrow pressed!');

      case 'downarrow'
          brick.MoveMotor('A', -25);
          brick.MoveMotor('B', -25);
          disp('Down arrow pressed!');
	
      case 'q'
          brick.StopMotor('A');
          brick.StopMotor('B');

    case 'e'
        brick.MoveMotor('D', -1);
        pause(0.3);
        brick.StopMotor('D');

    case 'r'
        brick.MoveMotor('D', 1);
        pause(0.3);
        brick.StopMotor('D');
       
    case '0'
        disp('asd');
        brick.StopAllMotors("Coast");

    case 'a'
        autonomousMode();
end
end
    CloseKeyboard();