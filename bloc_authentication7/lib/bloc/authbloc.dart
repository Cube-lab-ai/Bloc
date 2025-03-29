import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/bloc/authevents.dart';
import 'package:flutter_application_1/bloc/authstate.dart';

class Authbloc extends Bloc<Authevents, Authstate> {
  Authbloc() : super(AuthInitial()) {
    on<AuthLogInRequested>((event, state) async {
      emit(AuthLoading());

      final username = event.username;
      final password = event.passowrd;

      await Future.delayed(Duration(seconds: 2));

      if (password!.length <= 6) {
        emit(AuthFailure(failure: "password must me 6 character length"));
      } else if (password.length >= 6) {
        return emit(AuthSucess("verified sucess"));
      }
    });
  }
}
