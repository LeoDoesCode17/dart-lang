/*
Branches are used to control the flow of execution in dart code
There are three types of branches in dart :
1. if-else statement
2. if-case statement
3. switch-case statement
*/
void main() {
  // compareTwoNumbers(num1: 1, num2: 2);
  // checkPairIntegers(pair: [0, 1]);
  // checkPairIntegers(pair: ['Leo', 1]);
  // action(command: 'START');
  // print('Value of command START is: ${getCommandValue(command: 'START')}');
}

//perform if else statement
void compareTwoNumbers({required int num1, required int num2}) {
  if (num1 > num2) {
    print('$num1 is greater than $num2');
  } else if (num1 < num2) {
    print('$num1 is less than $num2');
  } else {
    print('$num1 is equal to $num2');
  }
}

//perform if case statement (combine if-else with pattern)
//This function combines if-else statement and pattern matching
void checkPairIntegers({required var pair}) {
  if (pair case [int _, int _]) {
    print('$pair is a pair of integers');
  } else {
    print('$pair is not a pair of integers');
  }
}

//perform switch case statement
void action({required String command}) {
  switch (command) {
    case 'START':
      print('Starting the engine');
      break;
    case 'STOP':
      print('Stopping the engine');
      break;
    case 'RESTART':
      print('Restarting the engine');
      break;
    case 'RESET':
      print('Resetting the engine');
      break;
    case 'SHUTDOWN':
      print('Shutting down the engine');
      break;
    case 'PAUSE':
      print('Pausing the engine');
      break;
    case 'RESUME':
      print('Resuming the engine');
      break;
    default:
      print('Invalid command');
      break;
  }
}

//switch expression : save a value to a variable from switch
int getCommandValue({required String command}) {
  return switch (command) {
    'START' => 1,
    'STOP' => 2,
    'RESTART' => 3,
    'RESET' => 4,
    'SHUTDOWN' => 5,
    'PAUSE' => 6,
    'RESUME' => 7,
    _ => -1, //default case
  };
}
