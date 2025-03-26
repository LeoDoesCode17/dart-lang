//typedef is alias of a type
typedef ListInt = List<int>;

//can have type parameter (generics)
typedef ListMapper<T> = Map<T, List<T>>;

//can be used for function : to define consistent function signature (consistent params)
typedef GFG(int a, int b);

void main() {
  ListInt list1 = [1, 2, 3];
  ListMapper<String> m1 = {};
  firstWayOnFunction();
  secondWayOnFunction();
  thirdWayOnFunction();
}

void firstWayOnFunction() {
  print('This is the first way, demonstrate using anonymous function');
  GFG g = (a, b) => a + b;
  print(g(1, 10));
}

void secondWayOnFunction() {
  print('This is the second way, demonstrate using anonymous function');
  GFG g = (a, b) {
    print('${a} + ${b} = ${a + b}');
  };
  g(1, 10);
}

//one name act differently
void thirdWayOnFunction(){
  print('This is the third way');
  GFG g = G1;
  g(1, 10);
  g = G2;
  g(1, 10);
  print('Note: function that is assigned to g must have same signature');
}

void G1(int a, int b) {
  print('This is from G1, (${a} ,${b})');
}

void G2(int a, int b) {
  print('This is from G2, (${a} ,${b})');
}
