void main() {
  //TYPE OF VARIABLES

  //NULLABLE VARIABLE
  /*
    can't be used as operand
    can be used for declaration
   */
  int? age; //age can be null or integer
  print('Nullable variable : ' + age.toString());
  //END NULLABLE VARIABLE

  //NON-NULLABLE VARIABLE
  /*
    must be initialized before use non-null variable
  */
  int id = 9; //id is an integer and must have value
  print('Non-null variabel ' + id.toString());
  //END NON-NULLABLE VARIABLE

  //LATE VARIABLE
  /*
    must be initialized before used
  */
  late String lateVar;
  lateVar = 'Leonardo';
  print('Late variable : ' + lateVar);
  //END LATE VARIABLE

  //FINAL VARIABLE
  /*
    final variable can't be changed
  */
  final finalVar = 9;
  print('Final var: ' + finalVar.toString() + " can only be set once");
  // finalVar = 10;
  //END FINAL VARIABLE

  //CONST VARIABLE
  /*
    const variable can't be changed
  */
  const constVar = 9;
  print('Const var: ' + constVar.toString() + " can't be changed");
  // constVar = 8; this is error
  //END CONST VARIABLE


  //END TYPE OF VARIABLES
}
