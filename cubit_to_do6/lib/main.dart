import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/addtodocubit.dart';
import 'package:flutter_application_1/todo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (context) => addToDoCubit(), child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Todo()));
  }
}
