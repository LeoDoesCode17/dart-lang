/*
There are 6 constructors in Dart:
1. Default constructor : if don't declare a constructor, Dart uses the default constructor. The default constructor is a generative constructor without arguments or name.

2. Generative constructor: Creates new instances and initializes instance variables

3. Named constructor : Clarifies the purpose of a constructor or allows the creation of multiple constructors for the same class

4. Constant constructor : Creates instances as compile-type constants

5. Factory constructor : Either creates a new instance of a subtype or returns an existing instance from cache
Use factory constructor for one of the following case :
a. When constructor doesn't create a new instance of its class but instance of subtype or an existing instance from a cache instead of creating a new one
b. Perform some logic(checking arguments or doing any other processing that cannot be handled in the initializer list) before creating an instance of the class

6. Redirecting constructor : Constructor that redirects to another constructor in the same class
*/
void main() {
  Logger logger1 = Logger('First');
  logger1.log('This is a log message from logger first');

  var logger2 = Logger.fromJson({'name': 'First'});
  logger2.log('This is a log message from logger second');

  var logger3 = Logger('Third');
  logger3.log('This is a log message from logger third');

  print(logger1 == logger2); // true, because they are the same instance
  /*
  Why logger1 == logger2? Because when instaniate logger2, the json['name'] is 'First exists in Logger._cache map as key and the value is the instance of Logger('First) which is same as logger1. That's why logger1 == logger2.
  */
  print(logger1 != logger3); // true, because they are different instance
  print(logger2 != logger3); // true, because they are different instance
}

class Point {
  double? x, y;

  // Generative constructor
  Point(this.x, this.y);

  // Named constructor
  Point.origin() {
    this.x = 0;
    this.y = 0;
  }

  // Redirecting constructor
  Point.alongXAxis(double x)
    : this(x, 0); //this(x,0) is the generative constructor
}

class Logger {
  final String name;
  bool mute = false;

  //static variable to represents cache
  static final Map<String, Logger> _cache = <String, Logger>{};

  //private constructor to prevent creating instance from outside the class
  Logger._internal(this.name);

  //using factory constructor to create or give existing instance from cache
  factory Logger(String name) {
    //if the name is already in the cache, return the existing instance
    //otherwise create a new instance and add it to the cache
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  //factory constructor to create instance from json object
  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  void log(String message) {
    if (!mute) print(message);
  }
}
