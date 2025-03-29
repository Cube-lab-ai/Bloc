import 'package:flutter_bloc/flutter_bloc.dart';

sealed class Counterevent {}

class CounterIncreament extends Counterevent {}

class OnDecreament extends Counterevent {}

class CounterBloc extends Bloc<Counterevent, int> {
  CounterBloc() : super(0) {
    on<CounterIncreament>((event, emit) {
      emit(state + 1);
    });

    on<OnDecreament>((event, emit) {
      emit(state - 1);
    });
  }
}

// import 'package:flutter_bloc/flutter_bloc.dart';

// sealed class Counterevent {}

// class CounterIncreament {}

// class OnDecreament extends CounterIncreament {}

// class CounterBloc extends Bloc<CounterIncreament, int> {
//   CounterBloc() : super(0) {
//     on<CounterIncreament>((event, emit) {
//       emit(state + 1);
//     });

//     on<OnDecreament>((event, emit) {
//       emit(state - 1);
//     });
//   }
// }
