void main(){
  var x = 7;
  var y = (x%2 == 0) ? x + 1 : x - 1;
  print('Y value is : ${y}');

  //null coalescing operators
  int? w;
  var z = w ?? x; //if w if null then z = x else z = w
  print('Z value is : ${z}');
}