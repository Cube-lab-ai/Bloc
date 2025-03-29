import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/addtodocubit.dart';
import 'package:flutter_application_1/todo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Addtodo extends StatefulWidget {
  const Addtodo({super.key});

  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
    TextEditingController _controller = TextEditingController();
    var add = BlocProvider.of<addToDoCubit>(context);

    return MaterialApp(
      home: Scaffold(
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

        key: _globalKey,
        appBar: AppBar(
          title: Text('Add To Do', style: TextStyle(color: Colors.white)),
          leading: IconButton(
            onPressed: () {
              _globalKey.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu, color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'Enter Input',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  add.addToDo(_controller.text);
                },
                child: Text('Save', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  shape: LinearBorder(),
                  backgroundColor: const Color.fromARGB(255, 65, 33, 243),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
