/**
 * Types of loop : for loop, iterable(for in and for each), while loop, and do while loop
 * In those loops, we can control behavior of looping using keyword : continue and break
 * Tips for iterable method (.map, .where):
📌 When to Use .map() vs .where()
✅ Use .map() → When you want to transform every element in the list.
✅ Use .where() → When you want to filter elements based on a condition.
 */
void main() {
  // performForLoop();
  // performForIn();
  // performForEach();
  // print(performWhileLoop(99999) == performDoWhile(99999));
  // performBreak([1, 2, 19, 4, 29, -9], 4);
  // performContinue([2, 3, 2, 6, -8, 10], 4);
}

void performForLoop() {
  var message = StringBuffer('Leonardo');
  for (var i = 0; i < 9; i++) {
    message.write('!');
  }
  print(message);
}

void performForIn() {
  var items = [1, 2, 3, 4, 10, 'Leonardo'];
  for (final item in items) {
    print('Item is $item');
  }
}

void performForEach() {
  //find numbers that is same or greater than threshold
  var numbers = [1, 9, 3, 4, 10, 6, 8];
  const threshold = 5;
  numbers.forEach((number) {
    if (number >= threshold) {
      print(number);
    }
  });
}

String performWhileLoop(int number) {
  //get bit of a number
  if (number == 0) {
    return '0';
  }
  var res = StringBuffer();
  while (number > 0) {
    res.write(number % 2);
    number ~/= 2;
  }
  return res.toString().split('').reversed.join();
}

String performDoWhile(int number) {
  //get bit of number
  var res = StringBuffer();
  do {
    res.write(number % 2);
    number ~/= 2;
  } while (number > 0);

  return res.toString().split('').reversed.join();
}

void performBreak(List<int> numbers, int target) {
  //perform sequential search
  int index = -1;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] == target) {
      index = i;
      break;
    }
  }
  print('The list is: $numbers');
  print('Element $target found at index $index');
}

void performContinue(List<int> numbers, int indexExclusive) {
  //perform sum of all elements in a list without a certain index
  int sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (i == indexExclusive) {
      continue;
    }
    sum += numbers[i];
  }
  print('List is: $numbers');
  print('Sum of all elements without index $indexExclusive = $sum');
}
