void main() {
  // performList();
  // performSet();
  performMap();
}

void performList() {
  //list of int
  var list1 = [1, 2, 3];
  print('First list: ${list1}');
  print('First element in list1: ${list1[0]}');
  print('Length of list1: ${list1.length}');
  print('Is list1 is empty?: ${list1.isEmpty}');
  list1.add(10); //insert 10 from rear
  print('First list after add new element: ${list1}');

  //create an immutable list
  var list2 = const [1, 2, 3, 4, 5];
  // list2[1] = 0; //cause runtime error
  print(list2);
}

void performSet(){
  //set is initialized using {el1, el2, el3, ...}
  /*
  Declaration
    var set =  <T>{};
    Set<T> set = {};
  */
  var set1 = {9, 1, 2, 3, 4};
  print('First set: ${set1}');
  print('Length of set1: ${set1.length}');
  print('Perform insertion');
  set1.add(-10);
  print('Set1 after insertion: ${set1}');
  print('Lenth of set1: ${set1.length}');
}

void performMap(){
  //map is an object that associates keys and values
  //keys and values can be any type of object

  /*
  Declaration
    var map = Map<T,T>();
  */

  // author = title -> author
  var author = {
    'Ring Of Fire': 'Leonardo',
    'Harry Potter': 'J.K. Rowling',
    'Narnia': 'C.S. Lewis',
  };
  print('Author map: ${author}');
  print('Author of Ring Of Fire: ${author['Ring Of Fire']}');
  print('Length of author map: ${author.length}');
}
