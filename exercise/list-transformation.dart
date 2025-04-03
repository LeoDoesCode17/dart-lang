/*
LIST TRANSFORMATION
Write a function uppercaseNames that takes a list of names and returns a new list where all names are in uppercase using forEach.
*/

void main() {
  const names = ['Leonardo', 'Bowo', 'Ali'];
  print('Uppercase names of $names = ${uppercaseNames(names)}');
}

List<String> uppercaseNames(List<String> names) {
  List<String> result = [];
  names.forEach((name) {
    result.add(name.toUpperCase());
  });
  return result;
}

//using arrow function
// List<String> uppercaseNames(List<String> names) =>
//     names.map((name) => name.toUpperCase()).toList();

