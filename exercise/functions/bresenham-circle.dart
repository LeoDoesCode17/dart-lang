void main() {
  Circle circle = Circle(10);
  var points = circle.getPoints();
  points.forEach((point) => print(point.toString()));
  print(points.length);
}

class Point {
  final int x, y;

  const Point(this.x, this.y);

  @override
  String toString() => '($x, $y)';

  @override
  bool operator ==(Object other) {
    if (other is Point) {
      return other.x == x && other.y == y;
    }
    return false;
  }

  Point reflectY() => Point(-x, y); //reflect with y axis
  Point reflectX() => Point(x, -y); //reflect with x axis
  Point reflectO() => Point(-x, -y); //reflect with (0, 0)

  Point operator +(Point point) => Point(x + point.x, y + point.y);
}

class Circle {
  final int radius;
  final Point center;

  Circle(this.radius, [Point? center]) : center = center ?? const Point(0, 0);

  List<Point> getPoints() {
    List<Point> res = [];
    int p = 1 - radius;
    int x = 0, y = radius;
    while (x < y) {
      x++;
      if (p > 0) {
        y--;
        p += (2 * x + 1 - 2 * y);
      } else
        p += (2 * x + 1);
      res.add(Point(x, y));
      if (x != y) res.add(Point(y, x));
    }

    //for the second quadrant : reflect with y-axis
    List<Point> secondQuadrant = res.map((point) => point.reflectY()).toList();

    //for the third quadrant : reflect with (0, 0)
    List<Point> thirdQuadrant = res.map((point) => point.reflectO()).toList();

    //for the fourth quadrant : reflect with x-axis
    List<Point> fourthQuadrant = res.map((point) => point.reflectX()).toList();

    //merge res with second, third, and fourth
    res.addAll(secondQuadrant);
    res.addAll(thirdQuadrant);
    res.addAll(fourthQuadrant);

    //add the edge (10, 0), (0, 10), (-10, 0), (0, -10)
    res.addAll([Point(10, 0), Point(0, 10), Point(0, -10), Point(-10, 0)]);

    return res.map((point) => point + center).toSet().toList();
  }
}
