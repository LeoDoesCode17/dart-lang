/*
Functions that return value of expression (only one expression) can be formed in arrow syntax 
*/

void main() {
  print(isEven(10));
}

//Basic form
// bool isEven(int number) {
//   return number % 2 == 0;
// }

//In arrow syntax (because only one expression):
bool isEven(int number) => number % 2 == 0;
