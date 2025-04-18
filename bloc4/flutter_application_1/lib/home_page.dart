import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // final counter = countercubit.state;
    final counterbloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('home page 1'),
      ),
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(title: ''),
                      ),
                    ),
                child: Text(
                  'Home page 1',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(title: ''),
                      ),
                    ),
                child: Text(
                  'Home page 2',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
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
              counterbloc.add(CounterIncreament());

              // if i didn't use setstate i will not notify to the counter . the value has been changed
              // when i use setstate rebuild will happens
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.

          SizedBox(width: 10),

          FloatingActionButton(
            onPressed: () {
              counterbloc.add(CounterDecreament());
            },
            tooltip: 'Decreament',
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
