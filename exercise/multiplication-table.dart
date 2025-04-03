/*
MULTIPLICATION TABLE
Write a function printMultiplicationTable that takes an integer n and prints the multiplication table from 1 to 10.
*/

void main() {
  printOperationTable(number: 10, symbol: 'x', operation: (a, b) => a * b);
}

void printOperationTable({
  required int number,
  required String symbol,
  required Function operation,
}) {
  for (var i = 1; i <= 10; i++) {
    print('$number $symbol $i = ${operation(number, i)}');
  }
}

//Refine version : 
// void printOperationTable({
//   required int number,
//   required String symbol,
//   required int Function(int, int) operation,
// })
