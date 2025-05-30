/*
Anonymous functions are functions that are created without name
Functions without name are also called lambdas or closures
Lambda function is same as anonymous function
Lambda function can be in arrow form and multiple statement form (without arrow)
All arrow functions is lambda function but not all lambda function is arrow function
*/
void main() {
  //these functions perform anonymous function
  printOddNumbers([1, 2, 3, 4, 5, 9, 26, 23, 27, 45]);
  printUppercaseList(['leo', 'bowo', 'ali']);
}

//This is lambda function in arrow form
//using lambda expression : (str) => str.toUpperCase()
// void printUppercaseList(List<String> strList) {
//   var uppercaseList = strList.map((str) => str.toUpperCase()).toList();
//   print('Original list\t\t: $strList');
//   print('Uppercase list\t\t: $uppercaseList');
// }

//this is lambda function without arrow
//full anonymous function
void printUppercaseList(List<String> strList) {
  var uppercaseList = strList.map((str) {
    return str.toUpperCase();
  }).toList();
  print('Original list\t\t: $strList');
  print('Uppercase list\t\t: $uppercaseList');
}

void printOddNumbers(List<int> numbers) {
  //where method receives an anonymous function that has 1 parameter such that number (element from the numbers list)
  var oddNumbers = numbers.where((number) => number % 2 != 0).toList();
  print('Original numbers\t: $numbers');
  print('Odd numbers\t\t: $oddNumbers');
}
