/*
SUM OF EVEN NUMBERS IN A INT LIST
Write a function sumEvenNumbers that takes a list of integers and returns the sum of all even numbers using a for-in loop
*/

void main() {
  const numbers = [1, 2, 3, 4, 5, 6];
  print('Sum of even numbers of $numbers = ${sumEvenNumbers(numbers)}');
}

int sumEvenNumbers(List<int> numbers) {
  int sum = 0;
  numbers.forEach((number) {
    if (number.isEven) {
      sum += number;
    }
  });
  return sum;
}

//using arrow function
// int sumEvenNumbers(List<int> numbers) =>
//     numbers.where((num) => num.isEven).reduce((a, b) => a + b);
