void main(){
  //Keyword: as, is, is! are useful for check type in runtime (when app is running)

  //as keyword: used to perform typecast (change type of a variable to another type)

  //is keyword: True if the object has the specified type
  var x = 9 + 10;
  print('Type of x is ${(x is double) ? 'Double' : 'Integer'}');

  //is! keyword: 	True if the object doesn't have the specified type
  var y = 9 + 10.5;
  print('Type of y is ${(y is! int) ? 'Double' : 'Integer'}');

}