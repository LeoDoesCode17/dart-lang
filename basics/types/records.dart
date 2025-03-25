void main(){
  //Record Type
  /* 
    Records are anonymous, immutable, and aggregate (composite) type
  */
  var record1 = ('Leonardo', a: 2, b: 3, 1); //(String, int, {int a, int b}) record1
  print('First builting element: ${record1.$1}');
  print('Second builtin element: ${record1.$2}');
  print('Dictionary element in record: ${record1.a}');
  print('Dictionary element in record: ${record1.b}');

  var record2 = (1, 3);
  var swapRecord2 = swap(record2);
  print('Record2: ${record2}');
  print('Swapped record2: ${swapRecord2}');

  //record with fields
  var record3 = (name: 'Leonardo', id: 'D121221020', age: 21);
  print('Record3: ${record3}');
}

//swap function that return record type
(int, int) swap((int, int) record){
  var (a, b) = record;
  return (b, a);
}