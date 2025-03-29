import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/authbloc.dart';
import 'package:flutter_application_1/bloc/authevents.dart';
import 'package:flutter_application_1/bloc/authstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Login Screen', style: TextStyle(color: Colors.white)),
      ),
      body: BlocListener<Authbloc, Authstate>(
        listener: (context, state) {
          if (state is AuthFailure) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.failure.toString())));
          } else if (state is AuthSucess) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.sucess.toString())));
          }
        },
        child: BlocBuilder<Authbloc, Authstate>(
          builder: (context, state) {
            if (state is AuthLoading) {
              return CircularProgressIndicator();
            } else {
              return Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter User Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 2),
                    TextField(
                      controller: username,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabled: true,
                        labelText: 'Enter User Name',
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      'Enter User Password',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 2),
                    TextField(
                      controller: password,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabled: true,
                        labelText: 'Enter User Password',
                      ),
                    ),
                    SizedBox(height: 20),

                    ElevatedButton(
                      onPressed: () {
                        context.read<Authbloc>().add(
                          AuthLogInRequested(username.text, password.text),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: LinearBorder(),
                        backgroundColor: const Color.fromARGB(255, 33, 79, 243),
                      ),
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
