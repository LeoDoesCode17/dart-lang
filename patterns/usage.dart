void main() {
  // variableDeclaration();
  // variableAssignment();
  // switchStatementAndExp();
  forLoops();
}

void forLoops() {
  Map<String, int> hist = {'a': 100, 'b': 29};

  //destructuring item in iterable hist.entries using MapEntry(key:key, value:count)
  //MapEntry represents an item in the Map 
  // for (var MapEntry(key: key, value: count) in hist.entries) {
  //   print('$key occurs in $count times');
  // }
  for (var MapEntry(: key, value: count) in hist.entries) {
    print('$key occurs in $count times');
  }
}

void switchStatementAndExp() {
  const max = 10;
  const min = 1;
  var number = 1;

  //match the pattern of number
  switch (number) {
    case min:
      print('$number is min');
      break;

    case >= min && <= max:
      print('$number is in range ($min, $max)');
      break;

    //if match record
    case (var a, var b):
      print('($a, $b)');
      break;
  }
}

void variableAssignment() {
  //destructuring
  var (a, b) = (1, 2);
  print('Init value: ($a, $b)');

  //assignment using destructuring
  (b, a) = (a, b);
  print('Final value: ($a, $b)');
}

void variableDeclaration() {
  //destructuring happens at runtime (a runtime operation)
  var myList = [1, 3];
  final (a, [b, c]) = ('Leonardo', myList);
  print('Value: ($a, $b, $c)');

  /*
    Working just fine: 
    final (a, [b, c]) = ('Leonardo', myList);
    print('Value: ($a, $b, $c)');

    var (a, [b, c]) = ('Leonardo', myList);
    print('Value: ($a, $b, $c)');

    Why? Because final and var allow runtime initialization, so they can be used with destructuring

    Error occured: 
    const (a, [b, c]) = ('Leonardo', myList);
    print('Value: ($a, $b, $c)');
  */
}
