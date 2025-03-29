import 'package:flutter_bloc/flutter_bloc.dart';
// on<CounterIncreament>:

// This specifies that the Bloc should listen for events of type CounterIncreament. In this case, CounterIncreament is a class that represents an event that triggers an action, like incrementing a counter.

// Whenever the event of type CounterIncreament is added to the Bloc, the corresponding callback function will be triggered.

// (event, emit):

// event: This represents the instance of the event that was added to the Bloc. In this case, it would be of type CounterIncreament. The event object holds any data you want to pass along when adding the event to the Bloc.

// emit: This is a function used to update the state of the Bloc. When you call emit(newState), the Bloc's state will be updated to newState, and any listeners or UI elements subscribed to the state will be notified about the change.

// emit(state + 1):

// This is where you change the state of the Bloc. The current state (which starts as 0 when the Bloc is initialized) is incremented by 1, and the new state is emitted using emit(state + 1).

// As a result, the state of the CounterBloc will update every time the CounterIncreament event is added.

class counterevent {}

class CounterIncreament extends counterevent {}

class CounterDecreament extends counterevent {}

class CounterBloc extends Bloc<counterevent, int> {
  CounterBloc() : super(0) {
    on<CounterIncreament>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecreament>((event, emit) {
      emit(state - 1);
    });
  }
}
