void main(){
  var a = 6;
  var b = 7;

  a += b; // a = a + b
  assert(a == 13);

  a ~/= b; // a = a ~/ b
  assert(a == 1);

  int? c;
  c ??= a; // if c is null then c = a else still same
  assert(c == a);
}