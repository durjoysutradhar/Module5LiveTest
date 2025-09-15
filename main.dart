class Student {
  String name;
  int roll;
  Student(this.name, this.roll);
  void displayInfo() {
    print("Name: $name, Roll: $roll");
  }
}

class Person {
  String name;
  Person(this.name);
}

class Teacher extends Person {
  String subject;
  Teacher(String name, this.subject) : super(name);
  void display() {
    print("Name: $name, Subject: $subject");
  }
}

abstract class Shape {
  double? _area;
  double area();
  void setArea(double a) {
    _area = a;
  }
  double getArea() {
    return _area ?? 0.0;
  }
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double area() {
    double calculatedArea = 3.1416 * radius * radius;
    setArea(calculatedArea);
    return calculatedArea;
  }
}

void main() {
  Student student1 = Student("DurJoy", 2204084);
  student1.displayInfo();

  Teacher teacher1 = Teacher("Abhi Datta", "Flutter");
  teacher1.display();

  Circle circle1 = Circle(10);
  print("Area of Circle: ${circle1.area()}");
  print("Accessing through getter: ${circle1.getArea()}");
}
