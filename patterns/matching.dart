void main() {
  //matching : to match if number == 1
  const number = 1;
  switch (number) {
    case 1:
      print('Variable is $number');
  }

  //constant pattern
  const obj = [1, 2];
  const a = 1;
  const b = 2;
  switch (obj) {
    case [a, b]:
      print('obj is ($a, $b)');
  }

}
