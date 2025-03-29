import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/counter_bloc.dart';
import 'package:flutter_application_1/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    // final counter = countercubit.state;
    final counter = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Home page 2'),
      ),
      drawer: Drawer(child: Column(children: [Text('Home page 1')])),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            BlocBuilder<CounterBloc, int>(
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
              counter.add(CounterIncreament());

              // if i didn't use setstate i will not notify to the counter . the value has been changed
              // when i use setstate rebuild will happens
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.

          SizedBox(width: 10),

          FloatingActionButton(
            onPressed: () {
              counter.add(CounterDecreament());
            },
            tooltip: 'Decreament',
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
