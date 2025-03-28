void main() {
  //destructuring numList
  const numList = [1, 2, 3, 4];
  //if the pattern in the left side is not same with the numList, error raised (compile error)

  //combine matching and destructuring
  var [a, b, c, d] = numList;
  print('numList = [$a, $b, $c, $d]');
  switch (numList) {
    case [1 || 2, var a, var b, var c]:
      print('The rest is: $a, $b, $c');
  }
}
