void main(){
  //all variables are sub class of Object class

  //int type
  int intVar = -6;
  print('Abs of ${intVar} = ${intVar.abs()}');

  //double type
  double doubleVar = 1.27;
  print('Floor of ${doubleVar} = ${doubleVar.floor()}');
  print('Ceil of ${doubleVar} = ${doubleVar.ceil()}');

  //big number
  var bigNumber = 1_882_827_334_647;
  print('Big number: ${bigNumber}');

  //string type
  String stringVar = 'Leonardo';
  print('My name is : ${stringVar}');
  print('Is stringVar is empty? : ${stringVar.isEmpty}');
  String floatStr = '1.59';
  print('Floor of float string ${floatStr} = ${double.parse(floatStr).floor()}');
  String intStr = '-10';
  print('Abs of int string ${intStr} = ${int.parse(intStr).abs()}');
}