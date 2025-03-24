void main(){
  assert(2 + 3 == 5);
  assert(3 - 1 == 2);
  assert(3 * 8 == 24);
  assert(6 / 4 == 1.5);
  assert(6 ~/ 4 == 1); //result in integer
  assert(5 % 3 == 2);

  //preincrement and decrement 
  var a = 0;
  var b = ++a; //a = a + 1, b = a
  assert(a == b); // 1 == 1

  //postincrement and decrement
  a = 0;
  b = a++; //b = a, a = a + 1
  assert(a != b); // 1 != 0
}