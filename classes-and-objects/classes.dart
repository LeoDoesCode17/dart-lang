void main() {
  Point p1 = Point.named(x: 10, y: 20);
  print('This is p1:');
  p1.printPoint();
  print('Get the value of p1 using getter:');
  print('(${p1.x}, ${p1.y})'); // this is using getter x and y
  Point p2 = Point.origin();
  print('This is p2:');
  p2.printPoint();
  p2.x = 1;
  p2.y = 2;
  print('This is p2 after setting x and y using setter:');
  p2.printPoint();
}

class Point {
  // these are the properies of the class (private properties cause begin with _)
  int? _x, _y;

  Point(this._x, this._y); // this is the constructor with params

  // this is the constructor without params
  Point.origin() {
    this._x = 0;
    this._y = 0;
  }

  // this is the constructor with named params
  Point.named({required int x, required int y}) {
    this._x = x;
    this._y = y;
  }

  //getter of x property
  int? get x => _x;

  //setter of x property
  set x(int? x) {
    this._x = x;
  }

  //getter of y property
  int? get y => _y;

  //setter of y property
  set y(int? y) {
    this._y = y;
  }

  void printPoint() {
    print('(${this._x}, ${this._y})');
  }
}
