// In Dart, when you try to print an object (like weather1), Dart will automatically call the toString() method on that object to convert it into a human-readable string format.

// class WeatherModel {
//   final double currentTemp;
//   final String currentSky;
//   final double currentPressure;
//   final double currentWindSpeed;
//   final double currentHumidity;

//   WeatherModel({
//     required this.currentTemp,
//     required this.currentSky,
//     required this.currentPressure,
//     required this.currentWindSpeed,
//     required this.currentHumidity,
//   });

//   // The copyWith function allows creating a copy of the object with modified properties
//   WeatherModel copyWith({
//     double? currentTemp,
//     String? currentSky,
//     double? currentPressure,
//     double? currentWindSpeed,
//     double? currentHumidity,
//   }) {
//     return WeatherModel(
//       currentTemp: currentTemp ?? this.currentTemp,
//       currentSky: currentSky ?? this.currentSky,
//       currentPressure: currentPressure ?? this.currentPressure,
//       currentWindSpeed: currentWindSpeed ?? this.currentWindSpeed,
//       currentHumidity: currentHumidity ?? this.currentHumidity,
//     );
//   }

//   @override
//   String toString() {
//     // TODO: implement toString
//     return 'WeatherModel(currentTemp: $currentTemp, currentSky: $currentSky, currentPressure: $currentPressure, currentWindSpeed: $currentWindSpeed, currentHumidity: $currentHumidity)';
//   }
// }

// 2 --------------------------------------------------------------------------------

// class Weathermodel {
//   double humidity;
//   double temp;
//   double weather;

//   Weathermodel({
//     required this.humidity,
//     required this.temp,
//     required this.weather,
//   });

//   Weathermodel copyWith({double? humidity, double? temp, double? weather}) {
//     return Weathermodel(
//       humidity: humidity ?? this.humidity,
//       temp: temp ?? this.temp,
//       weather: weather ?? this.weather,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'Humitidy': humidity,

//       'temp': temp,

//       'weather': weather,
//     };
//   }

//   @override
//   String toString() {
//     return "$humidity $temp $weather";
//   }
// }

// 3----------------------------------------------------------------------------

// abstract class Person {
//   String name;
//   int age;

//   Person(this.name, this.age);

//   // Abstract method to describe the person
//   void describe();

//   // Factory constructor to create either a Student or Teacher based on type
//   factory Person.createPerson(String type, String name, int age) {
//     if (type == 'Student') {
//       return Student(name, age);
//     } else if (type == 'Teacher') {
//       return Teacher(name, age);
//     } else {
//       throw ArgumentError('Unknown type: $type');
//     }
//   }
// }

// class Student extends Person {
//   Student(String name, int age) : super(name, age);

//   @override
//   void describe() {
//     print('$name is a Student, and they are $age years old.');
//   }
// }

// class Teacher extends Person {
//   Teacher(String name, int age) : super(name, age);

//   @override
//   void describe() {
//     print('$name is a Teacher, and they are $age years old.');
//   }
// }

// 4 factory constructor -------------------------------------------------------

// import 'package:flutter/cupertino.dart';

// abstract class Persion {
//   String? name;
//   double? age;

//   Persion(this.name, this.age);

//   void describe();

//   factory Persion.createPersion(String type, String name, double age) {
//     if (type == 'Teacher') {
//       return Teacher(name, age);
//     } else if (type == 'Student') {
//       return Student(name, age);
//     } else {
//       throw ArgumentError('unknown type : $type');
//     }
//   }
// }

// class Teacher extends Persion {
//   Teacher(String nam, double ag) : super(nam, ag);

//   @override
//   void describe() {
//     // TODO: implement describe
//     print(name);
//     print(age);
//   }
// }

// class Student extends Persion {
//   Student(String nam, double ag) : super(nam, ag);

//   @override
//   void describe() {
//     // TODO: implement describe
//     print("$name  ... $age");
//   }
// }

// 5 Convert WeatherModel to a JSON string -------------------------------------

// import 'dart:convert';

// class WeatherModel {
//   final double currentTemp;
//   final String currentSky;
//   final double currentPressure;
//   final double currentWindSpeed;
//   final double currentHumidity;

//   WeatherModel({
//     required this.currentTemp,
//     required this.currentSky,
//     required this.currentPressure,
//     required this.currentWindSpeed,
//     required this.currentHumidity,
//   });

//   // Convert WeatherModel to a Map
//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'currentTemp': currentTemp,
//       'currentSky': currentSky,
//       'currentPressure': currentPressure,
//       'currentWindSpeed': currentWindSpeed,
//       'currentHumidity': currentHumidity,
//     };
//   }

//   String toJson() => json.encode(toMap());
// }

// Covariant -----------------------------------------------------------------------------
class Point {
  final int x, y;

  Point(this.x, this.y);

  @override
  bool operator ==(covariant Point other) {
    // Compare based on content
    return this.x == other.x && this.y == other.y;
  }

  @override
  int get hashCode => x.hashCode ^ y.hashCode;
}

class ColoredPoint extends Point {
  final String color;

  ColoredPoint(int x, int y, this.color) : super(x, y);
}
