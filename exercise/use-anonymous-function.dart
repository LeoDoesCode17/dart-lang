/* 
USE AN ANONYMOUS FUNCTION
Create a function applyOperation that takes two integers and a function as parameters. The function should apply the given operation to the numbers.

Anonymous function is a function that doesn't have a name. It can be assigned to a variable or passed as an argument to another function. Arrow function is a shorthand syntax for defining anonymous functions in Dart, but it must return only one expression.
*/
void main() {
  const a = 10, b = 2;

  final product = applyOperation(a, b, (a, b) => a * b);
  print('Result of product\t: $product'); // Result: 20

  final sum = applyOperation(a, b, (a, b) => a + b);
  print('Result of sum\t\t: $sum'); // Result: 12

  final subtracion = applyOperation(a, b, (a, b) => a - b);
  print('Result of subtracion\t: $subtracion'); // Result: 8

  final intDivision = applyOperation(a, b, (a, b) => a ~/ b);
  print('Result of int division\t: $intDivision'); // Result: 5

  final modulus = applyOperation(a, b, (a, b) => a % b);
  print('Result of modulus\t: $modulus'); // Result: 0
}

int applyOperation(int a, int b, Function operation) {
  return operation(a, b);
}
