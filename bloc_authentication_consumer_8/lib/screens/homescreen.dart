import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/authbloc.dart';
import 'package:flutter_application_1/bloc/authstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    //     Casting (as): The as keyword is necessary when you're explicitly trying to tell Dart, "Treat this object as a specific type." Even though you're able to print authstate and see that it's AuthSucess, Dart still sees it as an Authstate because AuthSucess is a subclass of Authstate. Therefore, you need to cast it to AuthSucess if you want to access properties that only exist in the AuthSucess class, like sucess.

    // Accessing Specific Properties: AuthSucess likely has properties or methods that are not part of the Authstate class (like sucess). In order to access those properties, Dart needs to know that you're dealing with an AuthSucess object specifically. That's why you need to cast it using as.

    //     What Happens If You Don't Use as?
    // If you don't use as, you can only access the properties and methods that are common to Authstate, the parent class. For example:

    //     var authstate = context.watch<Authbloc>().state;
    // print(authstate);  // Prints 'Instance of AuthSucess'

    // // This would cause an error if 'AuthSucess' has specific properties, e.g. `sucess`
    // print(authstate.sucess);  // Error: The getter 'sucess' isn't defined for the class 'Authstate'.

    // Since Authstate doesn't have a sucess property, you would get a compilation error trying to access it directly.
    var authstate = context.watch<Authbloc>().state;
    print(authstate);
    return Center(child: Text(authstate.toString()));
  }
}
