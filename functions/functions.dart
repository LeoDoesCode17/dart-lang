/*
Functions declaration :
1. Functions are object too, with type Function
2. We can omit return type of functions in Dart 
*/

void main() {
  print(isEven(10));
}

//Basic form
bool isEven(int number) {
  return number % 2 == 0;
}

//Omit return type:
// isEven(int number){
//   return number % 2 == 0;
// }
