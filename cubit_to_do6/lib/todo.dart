import 'package:flutter/material.dart';
import 'package:flutter_application_1/addtodo.dart';
import 'package:flutter_application_1/cubit/addtodocubit.dart';
import 'package:flutter_application_1/models/todomodel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var todo = BlocProvider.of<addToDoCubit>(context);

    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Todo();
                    },
                  ),
                );
              },
              child: Container(
                child: ListTile(
                  leading: Icon(Icons.work),
                  title: Text(
                    'Show To Do',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Addtodo();
                    },
                  ),
                );
              },
              child: Container(
                child: ListTile(
                  leading: Icon(Icons.work),
                  title: Text(
                    'Add To Do',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('To Do', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          onPressed: () {
            _globalKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Addtodo()),
          );
        },
        child: Icon(Icons.add),
      ),

      body: BlocBuilder<addToDoCubit, List<Todomodel>>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (context, index) {
              var updatetask = state[index];
              return ListTile(
                title: Text(updatetask.task.toString()),
                subtitle: Text(updatetask.dateTime.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
