// import 'package:flutter/material.dart';
// import 'package:weatherapp_pre_req/model/weathermodel.dart';

// void main() {
//   runApp(const MyApp());
//   WeatherModel weather1 = WeatherModel(
//     currentTemp: 34,
//     currentSky: 'sky',
//     currentPressure: 34,
//     currentWindSpeed: 342,
//     currentHumidity: 34,
//   );
//   print(weather1);

//   // Use the copyWith function to create a new object with a modified temperature
//   WeatherModel weather2 = weather1.copyWith(currentTemp: 30.0);
//   print("Modified Weather (Temperature Updated): $weather2");
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// 2 -----------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:weatherapp_pre_req/model/weathermodel.dart';

// void main() {
//   runApp(MyApp());
//   Weathermodel weathermodel1 = Weathermodel(
//     humidity: 23,
//     temp: 23.4,
//     weather: 134.5,
//   );

//   Weathermodel weather2 = weathermodel1.copyWith(humidity: 233);
//   print(weather2);
//   print(weather2.toMap());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Scaffold(body: Text('data')));
//   }
// }

// 3----------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:weatherapp_pre_req/model/weathermodel.dart';

// void main() {
//   runApp(MyApp());
//   Person student = Person.createPerson('Student', 'Alice', 20);
//   student.describe();

//   // Creating a Teacher object using the factory constructor
//   Person teacher = Person.createPerson('Teacher', 'Mr. Smith', 35);
//   teacher.describe();
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Scaffold(body: Text('data')));
//   }
// }

// 4 factory constructor -------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:weatherapp_pre_req/model/weathermodel.dart';

// void main() {
//   runApp(MyApp());
//   Persion persion = Persion.createPersion('Student', 'bala', 33);
//   persion.describe();
//   Persion teacher = Persion.createPersion('Teacher', 'kavitha', 12);
//   teacher.describe();
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Scaffold(body: Text('data')));
//   }
// }

// 5 weather model to json string ---------------------------------------------

// import 'package:weatherapp_pre_req/model/weathermodel.dart';

// void main() {
//   // Create an instance of WeatherModel with some sample data
//   WeatherModel weather = WeatherModel(
//     currentTemp: 25.5,
//     currentSky: "Clear",
//     currentPressure: 1012.0,
//     currentWindSpeed: 5.5,
//     currentHumidity: 70.0,
//   );

//   String jsonWeather = weather.toJson();

//   // Print the JSON string
//   print("Weather Data as JSON: $jsonWeather");
// }

// Covariant ------------------------------------------------

// What does this code do?

//     operator ==:

//         This is the equality operator that is used when comparing two objects of the Point class (or its subclasses).

//         Dart allows you to override the == operator in a class, enabling custom behavior when comparing objects of that class.

//     covariant Point other:

//         covariant allows the other parameter to accept not only Point objects, but also any subtype of Point.

//         This makes the operator more flexible, allowing comparisons between objects of the base class Point and any subclass, such as ColoredPoint, if they exist.

//     this.x == other.x && this.y == other.y:

//         The this refers to the current instance of the Point object (the object calling this method).

//         other is the parameter, which represents the other Point object you want to compare with.

//         The comparison happens based on the x and y values of the Point objects. These are the content of the Point object. If both x and y are the same in both objects, they are considered equal.

//         In other words, the equality operator compares the two Point objects by checking if:

//             The x coordinate of the first Point is equal to the x coordinate of the second Point.

//             The y coordinate of the first Point is equal to the y coordinate of the second Point.

//     return this.x == other.x && this.y == other.y;:

//         If both conditions are true (i.e., both the x and y values are equal), the operator returns true, meaning the two Point objects are equal.

//         If either x or y is not equal, the operator returns false, meaning the two Point objects are not equal.

// 1. this:

//     this refers to the current instance of the class on which the method is being called.

//     In the case of an object comparison, this represents the object that is calling the operator or method.

// For example, if you have a Point object p1 and you call p1 == p2, this refers to the p1 object within the operator == method.
// 2. other:

//     other is a parameter in the method or operator, and in this case, it's used to refer to the other object you're comparing to.

//     In the operator == method, the other object is the object that the current object (this) is being compared with.

// In the case of p1 == p2, p1 is this (the object calling the method), and p2 is other (the object you're comparing p1 with).
import 'dart:math';
import 'package:weatherapp_pre_req/model/weathermodel.dart';

void main() {
  var p1 = Point(1, 2);
  var p2 = Point(1, 2);
  var p3 = ColoredPoint(1, 2, "red");

  print(p1 == p2); // true, because their x and y are equal
  print(
    p1 == p3,
  ); // true, because ColoredPoint(1, 2, "red") is a subtype of Point
}
