import 'dart:math';

void main() {
  // var p1 = Point.origin();
  // var p2 = Point(3, 4);
  // print(p1.distanceTo(p2));

  // Vector v1 = Vector(1, 2, 3);
  // Vector v2 = Vector(4, 5, 6);
  // Vector sumV = v1 + v2;
  // Vector subV = v1 - v2;
  // Vector scalarV = v1 * 2;
  // print('Sum of v1 and v2 :');
  // sumV.info();
  // print('Substraction of v1 and v2 :');
  // subV.info();
  // print('Scalar product of v1 with 2 :');
  // scalarV.info();

  // User user = User('Leonardo', 'D121221020');
  // user.info();
  // user.name = 'Bowo';
  // user.info();
  // print('New name\t: ${user.name}');
  // print('Id\t\t: ${user.id}');
}

class Point {
  double x, y;

  Point(this.x, this.y);
  Point.origin() : x = 0, y = 0;

  // this is instance method
  double distanceTo(Point otherPoint) {
    double dx = x - otherPoint.x;
    double dy = y - otherPoint.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Vector {
  double x, y, z;

  Vector(this.x, this.y, this.z);
  //methods name is operator (and many more operators can be used as name)
  Vector operator +(Vector v) => Vector(x + v.x, y + v.y, z + v.z);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y, z - v.z);
  Vector operator *(double scalar) =>
      Vector(x * scalar, y * scalar, z * scalar);

  void info() {
    print('($x, $y, $z)');
  }

  double magnitude() {
    return sqrt(x * x + y * y + z * z);
  }
}

class User {
  String _name, _id;

  User(this._name, this._id);

  // read only properties (getter)
  String get id => _id;

  //getter and setter of name property
  String get name => _name;
  set name(String name) => _name = name;

  void info() {
    print('Id\t\t: ${_id}');
    print('Name\t\t: ${_name}');
  }
}
