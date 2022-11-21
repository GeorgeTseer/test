
import 'dart:math';

enum Color {
  Green, Blue, Red,
}
 abstract class Shape {
double get square;
final Color color;
Shape(this.color);
}
class Rectangle extends Shape {
  final int sideA;
  final int sideB;
  final int sideC;
  @override
  double get square => (sideA * sideB * sideC).toDouble();
  Rectangle(
    Color color, this.sideA, this.sideB, this.sideC) : super(color);
}
class Circle extends Shape {
  final int rad;
  @override
  double get square => pi * rad * rad;
  Circle(
    Color color,
    this.rad,
  ) :super(color);
}
void main(){
;
  final rectangle = Rectangle(Color.Red,8,3,4);
  final circle = Circle(Color.Red,8);
  print(circle.color);
  print(circle.square);
print(rectangle.color);
  print(rectangle.square);

}

