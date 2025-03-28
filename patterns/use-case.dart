class User {
  String id = '';
  String name = '';
  int? age;

  User(this.id, this.name, this.age);
}

sealed class Shape {}

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

void main() {
  // destructuringClassInstance();
  // validatingIncomingJSON();
  // algebraicDataType();
}

/*
Destructuring multiple returns (json for example)
ex:
response = {name:.., age:.., id:.., ...}
final {:name, :age, :id} = response or getData()
*/

double calculateArea(Shape shape) => switch (shape) {
  Square(length: final l) => l * l,
  Circle(radius: final r) => 3.14 * r * r,
};

void algebraicDataType() {
  final areaOfCircle = calculateArea(Circle(10));
  final areaOfSquare = calculateArea(Square(10));
  print('Area of circle: $areaOfCircle');
  print('Area of square: $areaOfSquare');
}

void validatingIncomingJSON() {
  // var response = {
  //   'code': 200,
  //   'message': 'OK',
  //   'data': {
  //     'user': ['Leonardo', 'D121221020'],
  //   },
  // };

  // var {'code': responseCode, 'message': message, 'data': data} = response;
  // var {'user': [name, id]} = data;
  // print('Response code: $responseCode with message $message');
  // print('($id, $name)');

  var response = {
    'user': ['Leonardo', 'D121221020'],
  };

  var {'user': [name, id]} = response;
  print('($id, $name)');
}

void destructuringClassInstance() {
  final User user = User('D121221020', 'Leonardo', 10);

  //destructuring user object
  var User(:id, :name, :age) = user;

  print('($id, $name, $age)');
}
