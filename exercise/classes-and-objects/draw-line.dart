import 'dart:math';

void main() {
  Line line = Line(Point(10, 10), Point(17, 16));
  List<Point> points = line.drawUsingDDA();
  points.forEach((point) => print(point.toString()));
  print(points.length);
  // line.info();
}

class Point {
  int _x, _y;

  Point(this._x, this._y);

  Point.origin() : this._x = 0, this._y = 0;

  @override
  String toString() => '($_x, $_y)';

  @override
  bool operator ==(Object other) {
    if (other is Point) {
      return other.x == _x && other.y == _y;
    }
    return false;
  }

  //getter
  int get x => _x;
  int get y => _y;

  //setter (modified)
  void update(int x, int y) {
    _x = x;
    _y = y;
  }
}

class Line {
  final Point begin, end;

  const Line(this.begin, this.end);

  void info() {
    print('Begin\t: ${begin.toString()}');
    print('End\t: ${end.toString()}');
  }

  // List<Point> drawUsingDDA() {
  //   int dx = (end.x - begin.x).abs();
  //   int dy = (end.y - begin.y).abs();
  //   int step = max(dx, dy);
  //   double incX = dx / step;
  //   double incY = dy / step;
  //   // var currentPoint = begin; //when we modify currentPoint, the begin will modified
  //   List<Point> res = [begin];
  //   double x = begin.x.toDouble(), y = begin.y.toDouble();
  //   while (!(res.last == end)) {
  //     x += incX;
  //     y += incY;
  //     res.add(Point(x.round(), y.round()));
  //   }
  //   return res;
  // }

  //optimize version
  List<Point> drawUsingDDA() {
    double dx = (end.x - begin.x).toDouble();
    double dy = (end.y - begin.y).toDouble();
    int step = max(dx.abs(), dy.abs()).toInt();

    double incX = dx / step;
    double incY = dy / step;

    double x = begin.x.toDouble();
    double y = begin.y.toDouble();

    List<Point> res = [];

    for (int i = 0; i <= step; i++) {
      res.add(Point(x.round(), y.round()));
      x += incX;
      y += incY;
    }

    return res;
  }
}
