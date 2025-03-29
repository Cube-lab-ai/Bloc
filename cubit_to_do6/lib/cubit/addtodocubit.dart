import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/todomodel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class addToDoCubit extends Cubit<List<Todomodel>> {
  addToDoCubit() : super([]);

  void addToDo(String task) {
    var todo = Todomodel(task: task, dateTime: DateTime.now());
    state.add(todo);
    emit(state);
    print(todo);
  }
}

// 1 : 7
