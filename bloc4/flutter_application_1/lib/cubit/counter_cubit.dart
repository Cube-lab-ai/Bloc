import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit {
  CounterCubit() : super(0);

  void increament() {
    emit(state + 1);
    print(state);
  }

  void decreament() {
    emit(state - 1);
  }
}
