// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/cubit/counter_cubit.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text('${'ds'}', style: Theme.of(context).textTheme.headlineMedium),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // In this function, you're creating a new instance of CounterCubit with CounterCubit(), and then immediately calling increament() on that instance.

//           // The issue is that you're creating a new instance of CounterCubit every time the button is pressed, and the instance is immediately discarded after the method is executed. The state you change within this instance is lost, and the widget is not properly listening to the state changes.z
//           CounterCubit().increament();
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// -------------------------------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/cubit/counter_cubit.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final countercubit = CounterCubit();

//   @override
//   Widget build(BuildContext context) {
//     final counter = countercubit.state;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text('$counter', style: Theme.of(context).textTheme.headlineMedium),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         //         CounterCubit().increament is a reference to the increament() method of a CounterCubit instance, but the method itself is not invoked immediately.

//         // This way, when the button is pressed, the increament() method will be called using the instance of CounterCubit that is provided by the BlocProvider (if you're using BlocProvider to provide the CounterCubit).
//         onPressed: () {
//           countercubit.increament();

//           // if i didn't use setstate i will not notify to the counter . the value has been changed
//           // when i use setstate rebuild will happens
//           setState(() {});
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// ---------------------------------------------------------------------------------------------------------------------------

// listening to the state
// below code rebuild the entire scaffold

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/cubit/counter_cubit.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final countercubit = CounterCubit();

//   @override
//   Widget build(BuildContext context) {
//     // final counter = countercubit.state;
//     return BlocBuilder(
//       bloc: countercubit,
//       // The state that is passed to the builder method (i.e., counter) is automatically the latest value of the CounterCubit state.
//       builder: (context, counter) {
//         return Scaffold(
//           appBar: AppBar(
//             backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//             title: Text(widget.title),
//           ),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 const Text('You have pushed the button this many times:'),
//                 Text(
//                   '$counter',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 ),
//               ],
//             ),
//           ),
//           floatingActionButton: FloatingActionButton(
//             //         CounterCubit().increament is a reference to the increament() method of a CounterCubit instance, but the method itself is not invoked immediately.

//             // This way, when the button is pressed, the increament() method will be called using the instance of CounterCubit that is provided by the BlocProvider (if you're using BlocProvider to provide the CounterCubit).
//             onPressed: () {
//               countercubit.increament();

//               // if i didn't use setstate i will not notify to the counter . the value has been changed
//               // when i use setstate rebuild will happens
//             },
//             tooltip: 'Increment',
//             child: const Icon(Icons.add),
//           ), // This trailing comma makes auto-formatting nicer for build methods.
//         );
//       },
//     );
//   }
// }

// -----------------------------------------------------------------------------
// Below code will rebuiklds only the necessary changes

import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final countercubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    // final counter = countercubit.state;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            BlocBuilder(
              bloc: countercubit,
              builder: (context, state) {
                return Text('$state');
              },
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            //         CounterCubit().increament is a reference to the increament() method of a CounterCubit instance, but the method itself is not invoked immediately.

            // This way, when the button is pressed, the increament() method will be called using the instance of CounterCubit that is provided by the BlocProvider (if you're using BlocProvider to provide the CounterCubit).
            onPressed: () {
              countercubit.increament();

              // if i didn't use setstate i will not notify to the counter . the value has been changed
              // when i use setstate rebuild will happens
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.

          SizedBox(width: 10),

          FloatingActionButton(
            onPressed: () {
              countercubit.decreament();
            },
            tooltip: 'Decreament',
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
