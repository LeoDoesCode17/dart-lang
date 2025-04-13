import 'dart:math';

void main() {
  Line line = Line(Point(10, 10), Point(17, 16));
  List<Point> points = line.drawUsingBresenham();
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

  //this works only for the first octant
  // List<Point> drawUsingBresenham() {
  //   int dx = end.x - begin.x;
  //   int dy = end.y - begin.y;
  //   int p = 2 * dy - dx;
  //   int x = begin.x, y = begin.y;
  //   List<Point> res = [begin];
  //   while (!(res.last == end)) {
  //     x++;
  //     if (p >= 0) {
  //       y++;
  //       p -= (2 * dx); // p = p - 2*dx = p - 2*dx
  //     }
  //     p += 2 * dy; // p = p + 2*dy
  //     res.add(Point(x, y));
  //   }
  //   return res;
  // }

  //works for all octants, any slope direction (vertical, horizontal, and diagonal)
  List<Point> drawUsingBresenham() {
    int x1 = begin.x;
    int y1 = begin.y;
    int x2 = end.x;
    int y2 = end.y;

    List<Point> res = [];

    int dx = (x2 - x1).abs();
    int dy = (y2 - y1).abs();

    int sx = x1 < x2 ? 1 : -1;
    int sy = y1 < y2 ? 1 : -1;

    int err = dx - dy;

    while (true) {
      res.add(Point(x1, y1));
      if (x1 == x2 && y1 == y2) break;
      int e2 = 2 * err;
      if (e2 > -dy) {
        err -= dy;
        x1 += sx;
      }
      if (e2 < dx) {
        err += dx;
        y1 += sy;
      }
    }

    return res;
  }
}
