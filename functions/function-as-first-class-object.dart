/*
Funtions as first-class object : 
1. Pass any function as parameter to another function
2. Assign a function to a variable (can be done using anonymous function)
*/

void main() {
  passFunctionAsParameterToAnotherFunction();
}

bool isEven(int number) => number % 2 == 0;

//Function as first-class object : pass as parameter to another function
void printParity(int number) {
  print('Parity of $number is\t\t: ${isEven(number) ? 'Even' : 'Odd'}');
}

void passFunctionAsParameterToAnotherFunction() {
  List<int> list = [1, 2, 3, 4, 4, 9, 10];
  //list.forEach(action), action must have type: void Function(int)
  list.forEach(printParity);
}
