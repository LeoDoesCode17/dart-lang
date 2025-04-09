import 'dart:math';

void main() {}

//problem 5
/*
Design a Shape abstract class:
  Method: double get area
  Method: double get perimeter

Then create 2 subclasses:
  Circle (with radius)
  Rectangle (with width & height)

Each subclass must implement area & perimeter properly using:
  Constructor
  Getter
  Method override
*/
abstract class Shape {
  double getArea();
  double getPerimeter();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double getArea() => pi * radius * radius;

  @override
  double getPerimeter() => 2 * pi * radius;
}

class RectangleSecond extends Shape {
  double width, height;

  RectangleSecond(this.width, this.height);

  @override
  double getArea() => width * height;

  @override
  double getPerimeter() => 2 * (width + height);
}

//problem 4
/*
Create a BankAccount class:
  private property _balance
  getter balance
  setter balance → should not accept negative value (throw exception)
  method deposit(double amount)
  method withdraw(double amount)
  override == operator → two BankAccount objects are equal if they have the same balance
*/
class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set balance(double amount) {
    if (amount < 0) {
      print('Setting balance to value: $amount');
      throw Exception('Balance cannot be negative');
    }
    _balance = amount;
  }

  void deposit(double amount) => _balance += amount;

  void withdraw(double amount) {
    if (amount > _balance) {
      print('Withdrawing amount: $amount...');
      throw Exception('Insufficient balance, current balance is $_balance');
    }
    _balance -= amount;
  }

  @override
  bool operator ==(Object other) =>
      other is! BankAccount ? false : _balance == other._balance;

  // var acc1 = BankAccount();
  // acc1.deposit(100);
  // try {
  //   acc1.withdraw(1000);
  // } catch (e) {
  //   print(e);
  // }
}

//problem 3
/*
Create a Point class with:
  x and y properties
  factory constructor .fromString('3,4') → create Point from string
  override operator + to add two Point objects
  override toString() → return like (3,4)
*/
class Point {
  double x, y;

  Point(this.x, this.y);

  factory Point.fromString(String strPoint) {
    //split the string by comma and convert to int
    strPoint = strPoint
        .replaceAll('(', '')
        .replaceAll(')', '')
        .replaceAll(' ', '');
    List<String> pointList = strPoint.split(',');
    double x = double.parse(pointList[0]);
    double y = double.parse(pointList[1]);
    return Point(x, y);
  }

  Point operator +(Point p) => Point(this.x + p.x, this.y + p.y);

  String toString() => '($x,$y)';

  // Point p1 = Point.fromString('(3.1,  4.9)');
  // print(p1.toString());
}

//problem 2
/*
Create a Student class with:
  name and score properties
  named constructor .excellent() → automatically set score to 100
  instance method grade() → return 'A', 'B', 'C', etc based on score
*/
class Student {
  String name;
  double score;

  //generative constructor
  Student(this.name, this.score);

  //named constructor
  Student.excellent(this.name) : this.score = 100;

  //greade instance method to get grade based on score
  String grade() {
    return switch (this.score) {
      >= 90 => 'A',
      >= 80 => 'B',
      >= 70 => 'C',
      >= 60 => 'D',
      _ => 'F',
    };
  }
}

//problem 1
/*
Create a Rectangle class with:
  width and height (as properties)
  a generative constructor
  a method area() to calculate area
  a getter isSquare that returns true if width == height
  a setter size that sets both width and height at once
*/
class Rectangle {
  double width, height;

  //generative constructor
  Rectangle(this.width, this.height);

  //calculate are of rectangle
  double area() => this.width * this.height;

  //getter isSquare that returns true if width == height
  //use: r1.isSquare
  bool get isSquare => this.width == this.height;

  //setter size that sets both width and height at once
  void setSize(double size) => this.height = this.width = size;
}
