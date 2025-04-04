/*
Exceptions are error conditions that occur during execution of program (runtime) that indicates that something went wrong(unexpected).
Ex : NullPointerException, IndexOutOfBoundsException, DivideByZeroException, etc.

We can handle exceptions using try-catch-finally statement

Besides predefined exceptions, we can also create our own exceptions by extending the Exception class
*/
void main() {
  Map<String, int> llamasState = {'current': 111};
  while (true) {
    try {
      breedLlamas(llamasState: llamasState);
    } catch (e) {
      print('Current llamas: ${llamasState['current']}');
      print(e);
      print('Add more llamas to breed');
      break;
    }
  }
}

void breedLlamas({required Map<String, int> llamasState}) {
  /**
   * if llamasState['current'] < 2 : throw Exception
   */
  var countLlamas = llamasState['current'] ?? 0;
  if (countLlamas < 2) {
    throw Exception('Not enough llamas to breed');
  }
  //breed llamas
  print('Breeding llamas...');
  llamasState['current'] = countLlamas - 2;
}
