/*
Functions params :
1. Named parameters : specify named parameters like: myFunction(params1: val1, params2: val2, ...)
How to do that : using {} in the function declaration 
For not required parameters, use nullable for the type
For required parameters, use keyword required and non-nullable type
2. Optional positional parameters : a parameters that don't required value when a function is called
How to do that : wrap parameter declaration with []
If no default value provided, use nullable type
*/

void main() {
  print('Named parameter');
  userInfo(name: 'Bowo', id: 'D121221019');
  userInfo(id: 'D121221020', name: 'Leonardo', age: 20);
  print('\nOptional positional parameter');
  playerInfo('D121221020', 'Leonardo', null, 10);
  playerInfo('D121221019', 'Bowo', 13);
}

//Named parameter function
void userInfo({required String name, int? age, required String id}) {
  print('======== INFO ========');
  print('Name\t: $name');
  print('Id\t: $id');
  if (age != null) {
    print('Age\t: $age');
  }
  print('======================');
}

//Optional positional parameter
void playerInfo(String id, String name, [int? age, int level = 1]) {
  print('======== INFO ========');
  print('Name\t: $name');
  print('Id\t: $id');
  print('Level\t: $level');
  if (age != null) {
    print('Age\t: $age');
  }
  print('======================');
}
